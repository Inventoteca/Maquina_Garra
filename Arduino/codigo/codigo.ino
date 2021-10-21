#include "MPU6050.h"
#include <Servo.h>
#include <math.h>

//DEFINICIONES
#define T_CIERRE 5000     //Cuando la puerta esté cerrada, recolocará el servo en su posición cada T_CIERRE ms
#define T_DETACH 2500     //Hace detach del servo para que no ande consumiendo corriente al haber pasado T_DETACH ms de iniciar su movimiento
#define T_COMP   500      //Cuando se detecte movimiento verifica si dura más de T_COMP ms para decidir si cerrar o no la compuerta
#define CALIB 5           // Pin para el botón de calibración |activo en bajo|
#define OUT 8             // Pin de salida para notificar del cierre de la puerta |activo en alto|
#define IN 7              // Pin de entrada para abrir la puerta |activo en bajo|
#define PINS 9            // Pin de señal del servomotor
#define Open true         // Definición de Open como TRUE para simplificar la interpretación del código

// genera un objeto de la case MPU6050 
// con la dirección I2C predeterminada
//MPU6050 h;
Servo compuerta;                          // objeto de tipo Servo
MPU6050 inclinometro;                     // objeto de tipo inclinometro (dirección I2C predeterminada)
bool conectado = false,                   // representa la conexión del MPU con el arduino (checada al iniciar el Arduino)
     calib_stat = false,                  // variable que ayuda al debouncing del botón de calibración
     puerta = Open;                       // estado inicial de la puerta
uint8_t anguloLimite = 30;                // Angulo permisible respecto a la vertical
uint8_t anguloINF = 0;                    // Angulo límite mínimo respecto a la vertical
uint8_t anguloSUP = anguloLimite;         // Angulo límite máximo respecto a la vertical
uint8_t bonito = 2;                       //Angulo ajustable para que el servo coloque la puerta en una posición exacta
const int factorSensibilidad = 2150;      //factor de escalamiento para una sensibilidad +-16g del MPU
float gX,                                 //Variables de aceleración
      gY,                                 
      gZ;                                 
      
unsigned long t_cierre = 0,               //Variables para el control de tiempos
              t_detachO = 0,
              t_detachC = 0,              
              t_detachCC = 0,
              t_comparacion = 0,
              t_act = 0;                  
      
void setup() {
  pinMode(CALIB, INPUT_PULLUP);
  pinMode(IN, INPUT_PULLUP);
  pinMode(OUT, OUTPUT);
  compuerta.attach(PINS);
  compuerta.write(90+bonito);
   Serial.begin(38400);
   conectado = inclinometro.testConnection();
   inclinometro.initialize();
   inclinometro.setFullScaleAccelRange(MPU6050_ACCEL_FS_16);          //Reduce la sensibilidad del acelerómetro
//   compuerta.detach();
   //leemos los valores de los ángulos límite guardados en la EEPROM
}

void loop() {
  t_act = millis();

  //Manejamos el inevitable overflow de la variable de tiempo
  if(t_act < t_cierre || t_act < t_detachO || t_act < t_detachC ||t_act < t_comparacion){
    t_cierre = t_act;
    t_detachO = t_act;
    t_detachC = t_act;
    t_comparacion = t_act;
  }
  //Debouncing simple para el botón de calibración
  if (!digitalRead(CALIB) && !calib_stat){
    calibrarReferencia(&inclinometro);
    calib_stat = true;
  }
  if(digitalRead(CALIB) && calib_stat){
    calib_stat = false;
  }
  /////////////////////////////////

  if (puerta == Open){                                                            //Si la compuerta está abierta
    if(!enRango(&inclinometro,anguloINF, anguloSUP,500) && digitalRead(IN)){      // y está inclinada
      compuerta.attach(PINS);                         
      compuerta.write(90+bonito);  
      puerta = !Open;                                                             //CIERRA LA COMPUERTA
      Serial.println("cerrando");                     
      if (t_detachC == 0){
        t_detachC = t_act;
      }
      digitalWrite(OUT, HIGH);                                                    // notifica el cierre de la puerta
    }
  }
  
  // Coloca el servo en la posición de cierre cada 5s si el estado de la puerta indica CERRADO
  if (puerta != Open){
      if (t_cierre == 0){
        t_cierre = t_act;
      }
    if ((t_act - t_cierre) >= T_CIERRE){
      if (t_detachCC == 0){
        t_detachCC = t_act;
      }
      Serial.println("refuerzo de cierre");
      compuerta.attach(PINS);
      compuerta.write(90+bonito);
      t_cierre = 0;
    }
  }
  
  //Abre la puerta si recibe el comando
  if(!digitalRead(IN)){                              
    compuerta.attach(PINS); 
    compuerta.write(0 + bonito);
    puerta = Open;
    Serial.println("abriendo");                   
    if (t_detachO == 0){
      t_detachO = t_act;
    }
    digitalWrite(OUT, LOW);                     //Notifica que la puerta está abierta
  }


      if(t_detachO != 0 && t_act - t_detachO >= T_DETACH ){
        t_detachO = 0;
        Serial.println("detach");
      }
      if(t_detachC != 0 && t_act - t_detachC >= T_DETACH ){
        t_detachC = 0;
        Serial.println("detach");
      }
      if(t_detachCC != 0 && t_act - t_detachCC >= T_DETACH ){
        t_detachCC = 0;
        Serial.println("detach");
      }
}

void calibrarReferencia(MPU6050* inclinometro){
  // Obtiene las componentes del vector actual de la gravedad
  Serial.println("nueva referencia");
  gZ = inclinometro->getAccelerationZ();
  gX = inclinometro->getAccelerationX();
  gY = inclinometro->getAccelerationY();
  gZ /= float(factorSensibilidad);
  gX /= float(factorSensibilidad);
  gY /= float(factorSensibilidad);

  //Trigonometría para calcular los valores de los nuevos ángulos permisibles
  if (gZ < 0) gZ = -gZ;
  gX = pow(gX,2);
  gY = pow(gY,2);
  float coplanar = sqrt(gX + gY);
  float _tan = atan2(gZ,coplanar);
  float angulo = _tan > 0? (PI/2) - _tan : (PI/2) + _tan;
  anguloSUP = (angulo*360/(2*PI) + anguloLimite);
  anguloINF = (angulo*360/(2*PI) - anguloLimite) < 0 ? 0: (angulo*360/(2*PI) - anguloLimite);
}

bool enRango(MPU6050 *inclinometro , uint8_t limiteMIN, uint8_t limiteMAX, uint16_t t_tolerancia) {
  gZ = inclinometro->getAccelerationZ();
  gZ /= float(factorSensibilidad);
  if (gZ < 0) gZ = -gZ;
  float anguloMin = sin(float(90-limiteMAX)*2*PI/360);
  float anguloMax = sin(float(90-limiteMIN)*2*PI/360);
  if (limiteMIN <= 0)
  {
    if(gZ < anguloMin)
    {
      if(t_comparacion == 0){
        t_comparacion = t_act;
      }
    }
  }else{
    if(gZ < anguloMin || gZ > anguloMax)
    {
     if(t_comparacion == 0){
       t_comparacion = t_act;
     }
    }
   }

  if(t_comparacion != 0 && (t_act - t_comparacion >= t_tolerancia)){
   t_comparacion = 0;
   Serial.println("verificando");
   gZ = inclinometro->getAccelerationZ();
   gZ /= float(factorSensibilidad);
   if (gZ < 0) gZ = -gZ;
   if(gZ < sin(float(90-limiteMAX)*2*PI/360))
   {
     return false;
   }  
  }
  return true;
}