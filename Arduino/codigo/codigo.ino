#include "MPU6050.h"
#include "Arduino_LSM9DS1.h"
#include <Servo.h>
#include <math.h>
#define T_CIERRE 5000
#define T_DETACH 2500
#define T_COMP   500
#define CALIB 5
#define OUT 8
#define IN 7
#define PINS 9
#define Open true

// genera un objeto de la case MPU6050 
// con la dirección I2C predeterminada
//MPU6050 h;
Servo compuerta;
MPU6050 inclinometro;
bool conectado = false,
     calib_stat = false,
     puerta = Open;
//Angulo permisible respecto a la vertical
uint8_t anguloLimite = 30;
uint8_t anguloINF = 0;
uint8_t anguloSUP = anguloLimite;
uint8_t bonito = 2;
const int factorSensibilidad = 2150; //factor para una sensibilidad +-16g
float gX, 
      gY, 
      gZ;
      
unsigned long t_cierre = 0,
              t_detachO = 0,
              t_detachC = 0,
              t_detachCC = 0,
              t_comparacion = 0,
              t_act = 0;
      
void setup() {
  pinMode(CALIB, INPUT_PULLUP);
  pinMode(OUT, OUTPUT);
  pinMode(IN, INPUT_PULLUP);
  compuerta.attach(PINS);
  compuerta.write(90+bonito);
  // inicializa y conecta con el inclinómetro
   Serial.begin(38400);
   conectado = inclinometro.testConnection();
   inclinometro.initialize();
   inclinometro.setFullScaleAccelRange(MPU6050_ACCEL_FS_16);
   compuerta.detach();
   //leemos los valores de los ángulos límite guardados en la EEPROM
}

void loop() {
Serial.print("t: ");
Serial.print(t_act);
Serial.print("\t");
Serial.print("t_dO: ");
Serial.print(t_detachO);
Serial.print("\t");
Serial.print("t_dC: ");
Serial.print(t_detachC);
Serial.print("\t");
Serial.print("t_comp: ");
Serial.print(t_comparacion);
Serial.print("\t");
Serial.print("t_c: ");
Serial.println(t_cierre);
Serial.println(" ");
  
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

  if (puerta == Open){                                //Si la compuerta está abierta
    if(!enRango(&inclinometro,anguloINF, anguloSUP,500) && digitalRead(IN)){     // y está inclinada
      compuerta.attach(PINS);                         
      compuerta.write(90+bonito);  
      puerta = !Open;
      Serial.println("cerrando");                     //CIERRA LA COMPUERTA
      if (t_detachC == 0){
        t_detachC = t_act;
      }
      digitalWrite(OUT, HIGH);  //puerta cerrada
//      if(t_act - t_detachO >= T_DETACH){
//        t_detachO = 0;
//        compuerta.detach();
//        Serial.println("detach");
//      }
    }
  }
  
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
  
  if(!digitalRead(IN)){                              //Y piden abrirla
    compuerta.attach(PINS); 
    compuerta.write(0 + bonito);
    puerta = Open;
    Serial.println("abriendo");                     //Abrir la puerta
    if (t_detachO == 0){
      t_detachO = t_act;
    }
    digitalWrite(OUT, LOW);     
//    if(t_act - t_detachC >= T_DETACH){
//      t_detachC = 0;
//      Serial.println("detach");
//      compuerta.detach();
//    }  
  }


      if(t_detachO != 0 && t_act - t_detachO >= T_DETACH ){
        t_detachO = 0;
        compuerta.detach();
        Serial.println("detach");
      }
      if(t_detachC != 0 && t_act - t_detachC >= T_DETACH ){
        t_detachC = 0;
        compuerta.detach();
        Serial.println("detach");
      }
      if(t_detachCC != 0 && t_act - t_detachCC >= T_DETACH ){
        t_detachCC = 0;
        compuerta.detach();
        Serial.println("detach");
      }
  // if(gZ < sin(float(90-anguloLimite)*2*PI/360)){
  //   compuerta.attach(PINS);
  //   compuerta.write(90);
  //   Serial.println("Se murió :c");
  //   digitalWrite(OUT, HIGH);  //puerta cerrada
  // }
  //EL VALOR DE Y DEL ACELEROMETRO DEBE VALER 
  
  // put your main code here, to run repeatedly:
}

void calibrarReferencia(MPU6050* inclinometro){
  Serial.println("nueva referencia");
  gZ = inclinometro->getAccelerationZ();
  gX = inclinometro->getAccelerationX();
  gY = inclinometro->getAccelerationY();
  gZ /= float(factorSensibilidad);
  gX /= float(factorSensibilidad);
  gY /= float(factorSensibilidad);
  if (gZ < 0) gZ = -gZ;
  // calculamos la componente que nos falta
   Serial.print("Magnitud coplanar: \t");
  Serial.println(gX);
   Serial.print("Magnitud coplanar: \t");
  Serial.println(gY);
   Serial.print("Magnitud coplanar: \t");
  Serial.println(gZ);
  gX = pow(gX,2);
  gY = pow(gY,2);
  Serial.print("gX^2: ");
  Serial.println(gX);
  Serial.print("gY^2: ");
  Serial.println(gY);
  float coplanar = sqrt(gX + gY);
  Serial.print("Magnitud coplanar: \t");
  Serial.println(coplanar);
  Serial.print("TAN: \t");
  float tan = atan2(gZ,coplanar);
  Serial.println(tan);
  // calculamos el ángulo respecto a Z en el que estamos
  float angulo = tan > 0? (PI/2) - tan : (PI/2) + tan;
  Serial.print("Angulo: \t");
  Serial.println(angulo);
  //guardamos el offset en memoria EEPROM
  anguloSUP = (angulo*360/(2*PI) + anguloLimite);
  anguloINF = (angulo*360/(2*PI) - anguloLimite) < 0 ? 0: (angulo*360/(2*PI) - anguloLimite);
  Serial.print("Angulo INF: \t");
  Serial.println(anguloINF);
  Serial.print("Angulo SUP: \t");
  Serial.println(anguloSUP);
}

bool enRango(MPU6050 *inclinometro , uint8_t limiteMIN, uint8_t limiteMAX, uint16_t t_tolerancia) {
  gZ = inclinometro->getAccelerationZ();
  gZ /= float(factorSensibilidad);
  if (gZ < 0) gZ = -gZ;
  float anguloMin = sin(float(90-limiteMAX)*2*PI/360);
  float anguloMax = sin(float(90-limiteMIN)*2*PI/360);
  //Serial.println(gZ);
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
