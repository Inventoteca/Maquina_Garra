#include "MPU6050.h"
#include <Servo.h>
#include <math.h>
#include <EEPROM.h>

//Cambiar aquí para cambiar en todo el código
//Definiciones de tiempo T
#define T_CIERRE 10000     //Cuando la puerta esté cerrada, recolocará el servo en su posición cada T_CIERRE ms
#define T_DETACH 5000     //Hace detach del servo para que no ande consumiendo corriente al haber pasado T_DETACH ms de iniciar su movimiento
#define T_VERIF  900      //Cuando se detecte movimiento verifica si dura más de T_VERIF ms para decidir si cerrar o no la compuerta
//Definiciones de pines
#define CALIB 5           // Pin para el botón de calibración |activo en bajo|
#define OUT 8             // Pin de salida para notificar del cierre de la puerta |activo en alto|
#define IN 7              // Pin de entrada para abrir la puerta |activo en bajo|
#define SERVO 9            // Pin de señal del servomotor

#define OPEN true         // Definición de OPEN como TRUE para simplificar la interpretación del código

Servo compuerta;                          // objeto de tipo Servo
MPU6050 inclinometro;                     // objeto de tipo inclinometro (dirección I2C predeterminada)

bool conectado = false,                           // representa la conexión del MPU con el arduino (checada al iniciar el Arduino)
     calib_stat = false,                          // variable que ayuda al debouncing del botón de calibración
     puerta = OPEN;                               // estado inicial de la puerta
uint8_t anguloLimite = 30;                        // Angulo permisible respecto a la vertical
uint8_t desplazamientoMIN = 0;                    // Angulo límite mínimo respecto a la vertical
uint8_t desplazamientoMAX = anguloLimite;         // Angulo límite máximo respecto a la vertical
uint8_t compens = 0;                              //Angulo ajustable para que el servo coloque la puerta en una posición exacta
const int factorSensibilidad = 2100;              //factor de escalamiento para una sensibilidad +-16g del MPU
int anguloCerrado = 85;                           //Calibrar la posición de cierre del servo
int anguloAbierto = 5;                            //Calibrar la posición de apertura del servo
float gX, gY, gZ;                                 //Variables de aceleración                              
      
unsigned long t_cierre = 0,               //Variables para el control de tiempos
              t_detachO = 0,
              t_detachC = 0,              
              t_detachCC = 0,
              t_verificacion = 0,
              t_act = 0;                  //Tiempo activo
              

void setup() { //------------------------------------------------------SETUP----------------------------------//
  //Leemos los valores de desplazamiento mínimo y máximo de la EEPROM
  EEPROM.get(0,desplazamientoMIN);
  EEPROM.get(8, desplazamientoMAX);
  if(desplazamientoMAX == 255 || desplazamientoMIN == 255){   //Si no hay nada escrito en EEPROM usa valores default
    desplazamientoMAX = anguloLimite;
    desplazamientoMIN = 0;
    EEPROM.put(0,desplazamientoMIN);
    EEPROM.put(8,desplazamientoMAX);
  }
  pinMode(CALIB, INPUT_PULLUP);
  pinMode(IN, INPUT_PULLUP);
  pinMode(OUT, OUTPUT);
  
  compuerta.attach(SERVO);
  compuerta.write(anguloAbierto);
  
  Serial.begin(38400);
  Serial.println("Iniciando programa seguridad para maquina de garra.");
  conectado = inclinometro.testConnection();
  inclinometro.initialize();
  Serial.println("Inclinometro inicializado.");
  inclinometro.setFullScaleAccelRange(MPU6050_ACCEL_FS_16);          //Reduce la sensibilidad del acelerómetro
  Serial.println("Sensibilidad ajustada.");
  Serial.print("calibración actual: ");
  Serial.print(desplazamientoMIN);
  Serial.print("\t");
  Serial.println(desplazamientoMAX);

  Serial.println("Setup terminado.");
   
   
} //---------------------------------------------------------------FIN SETUP----------------------------------//

void loop() {//------------------------------------------------------LOOP----------------------------------//
  t_act = millis(); //Actualiza el tiempo activo

  //Manejamos el inevitable overflow de la variable de tiempo
  if(t_act < t_cierre || t_act < t_detachO || t_act < t_detachC ||t_act < t_verificacion){
    t_cierre = t_act;
    t_detachO = t_act;
    t_detachC = t_act;
    t_verificacion = t_act;
  }
  
  //Debouncing simple para el botón de calibración
  if (!digitalRead(CALIB) && !calib_stat){
    Serial.println("Calibracion iniciada");
    calibrarReferencia(&inclinometro);
    calib_stat = true;
  }
  if(digitalRead(CALIB) && calib_stat){
    calib_stat = false;
    Serial.println("Calibracion terminada");
  }
  

  if (puerta == OPEN){                                                            //Si la compuerta está abierta
    if(!enRango(&inclinometro,desplazamientoMIN, desplazamientoMAX,500) && digitalRead(IN)){      // y está inclinada y sin el pulso de abrir conectado
      compuerta.attach(SERVO);                                                    //Da corriente al servo   
      compuerta.write(anguloCerrado); puerta = !OPEN; Serial.println("cerrando");    //CIERRA LA COMPUERTA                 
      if (t_detachC == 0){
        t_detachC = t_act;
      }
      digitalWrite(OUT, HIGH);                                                    // notifica el cierre de la puerta
    }
  }
  
  
  if (puerta != OPEN){                                      //Si la compuerta está abierta
      if (t_cierre == 0){
        t_cierre = t_act;
      }
    if ((t_act - t_cierre) >= T_CIERRE){                    // Coloca el servo en la posición de cierre cada 5s si el estado de la puerta indica CERRADO
      if (t_detachCC == 0){
        t_detachCC = t_act;
      }
      Serial.println("refuerzo de cierre");
      compuerta.attach(SERVO);
      compuerta.write(anguloCerrado);
      t_cierre = 0;
    }
  }
  
  //Abre la puerta si recibe el comando
  if(!digitalRead(IN)){                              
    compuerta.attach(SERVO); 
    compuerta.write(anguloAbierto); puerta = OPEN; Serial.println("abriendo");    //ABRIR LA PUERTA               
    if (t_detachO == 0){                        //Sólo inicia el detach en el flanco del pulso
      t_detachO = t_act;
    }
    digitalWrite(OUT, LOW);                     //Notifica que la puerta está abierta
  }

    if(t_detachO != 0 && t_act - t_detachO >= T_DETACH ){
      t_detachO = 0;                          //Resetea la bandera para hacer detach la próxima vuelta
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
    
}//---------------------------------------------------------------FIN LOOP----------------------------------//

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
  float angulo = _tan > 0? (PI/2) - _tan : (PI/2) + _tan;     //ángulo respecto a la vertical
  desplazamientoMAX = (angulo*360/(2*PI) + anguloLimite);
  desplazamientoMIN = (angulo*360/(2*PI) - anguloLimite) < 0 ? 0: (angulo*360/(2*PI) - anguloLimite);
  EEPROM.put(0,desplazamientoMIN);
  EEPROM.put(8,desplazamientoMAX);

} //Fin calibrarReferencia()

bool enRango(MPU6050 *inclinometro , uint8_t limiteMIN, uint8_t limiteMAX, uint16_t t_tolerancia) {
  gZ = inclinometro->getAccelerationZ(); 
  gZ /= float(factorSensibilidad);
  if (gZ < 0) gZ = -gZ; //Para que no haya números negativos
  
  float anguloMin = sin(float(90-limiteMAX)*2*PI/360); // 
  float anguloMax = sin(float(90-limiteMIN)*2*PI/360);
  
  if (limiteMIN <= 0)
  {
    if(gZ < anguloMin)
    {
      if(t_verificacion == 0){
        t_verificacion = t_act;
      }
    }
  }else{
    if(gZ < anguloMin || gZ > anguloMax)
    {
     if(t_verificacion == 0){
       t_verificacion = t_act;
     }
    }
   }

  if(t_verificacion != 0 && (t_act - t_verificacion >= t_tolerancia)){
   t_verificacion = 0;
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
}//Fin enRango()
