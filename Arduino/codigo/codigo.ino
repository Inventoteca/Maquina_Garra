#include "MPU6050.h"
#include "Arduino_LSM9DS1.h"
#include <Servo.h>
#include <math.h>
//#include "LSM9DS1.h"
#define PI 3.14159
#define CALIB 5
#define OUT 7
#define IN 8
#define PINS 9
#define open true

// genera un objeto de la case MPU6050 
// con la dirección I2C predeterminada
//MPU6050 h;
Servo compuerta;
MPU6050 inclinometro;
bool conectado = false,
     calib_stat = false,
     puerta = open;
uint8_t anguloLimite = 40;
const int factorSensibilidad = 2048; //factor para una sensibilidad +-16g
float gX, gY, gZ;

//Ángulos para las rotaciones
float _alpha = 0,   //respecto al eje Z
      _beta = 0;    //respecto al eje Y


void setup() {
  pinMode(CALIB, INPUT_PULLUP);
  pinMode(OUT, OUTPUT);
  pinMode(IN, INPUT_PULLUP);
  compuerta.attach(PINS);
  compuerta.write(0);
  // // inicializa y conecta con el inclinómetro
   Serial.begin(38400);
   conectado = inclinometro.testConnection();
   inclinometro.initialize();
   inclinometro.setFullScaleAccelRange(MPU6050_ACCEL_FS_16);
}

void loop() {
  if (!conectado) return;   //si no está conectado no hace nada (mandar error?)
  //Debouncing simple para el botón de calibración
  if (!digitalRead(CALIB) && !calib_stat){
    //Calibra la nueva referencia 
    calibrarReferencia(&inclinometro);
    calib_stat = true;
  }
  if(digitalRead(CALIB) && calib_stat){
    calib_stat = false;
  }

  if (puerta == open){                                //Si la compuerta está abierta
    if(!enRango(&inclinometro,anguloLimite,500)){     // y está inclinada
      compuerta.attach(PINS);                         
      compuerta.write(90);  
      puerta = !open;
      Serial.println("cerrando");                     //CIERRA LA COMPUERTA
      digitalWrite(OUT, HIGH);  //puerta cerrada
      delay(2000);
      compuerta.detach();
    }
  }else{                                              //Si la compuerta está cerrada
    if(!digitalRead(IN)){                              //Y piden abrirla
      compuerta.attach(PINS); 
      compuerta.write(0);
      puerta = open;
      Serial.println("abriendo");                     //Abrir la puerta
      digitalWrite(OUT, LOW);     
      delay(2000);        
      compuerta.detach();   
    }
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
  inclinometro->CalibrateAccel();
  Serial.println("Nueva referencia");
}

// bool enRango(MPU6050 *inclinometro , uint8_t limite) {
//   gX = inclinometro->getAccelerationX();
//   gY = inclinometro->getAccelerationY();
//   gZ = inclinometro->getAccelerationZ();

//   gX /= float(factorSensibilidad);
//   gY /= float(factorSensibilidad);
//   gZ /= float(factorSensibilidad);
  
//   return 
// }

bool enRango(MPU6050 *inclinometro , uint8_t limite, uint8_t t_tolerancia) {
  gZ = inclinometro->getAccelerationZ();
  gZ /= float(factorSensibilidad);
  if (gZ < 0) gZ = -gZ;
  //Serial.println(gZ);

  if(gZ < sin(float(90-limite)*2*PI/360)){
    delay(t_tolerancia);
    gZ = inclinometro->getAccelerationZ();
    gZ /= float(factorSensibilidad);
    if (gZ < 0) gZ = -gZ;
    if(gZ < sin(float(90-limite)*2*PI/360)){
      return false;
    }
  }
  
  return true;
}