#include "MPU6050.h"
#include "Arduino_LSM9DS1.h"
#include <Servo.h>
#include <math.h>
#define CALIB 5
#define OUT 8
#define IN 7
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
//Angulo permisible respecto a la vertical
uint8_t anguloLimite = 30;
uint8_t anguloINF = 0;
uint8_t anguloSUP = anguloLimite;
uint8_t bonito = 2;
const int factorSensibilidad = 2150; //factor para una sensibilidad +-16g
float gX, gY, gZ;

//Ángulos para las rotaciones


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
  //si no está conectado no hace nada (mandar error?)
  //Debouncing simple para el botón de calibración
  if (!digitalRead(CALIB) && !calib_stat){
    calibrarReferencia(&inclinometro);
    calib_stat = true;
  }
  if(digitalRead(CALIB) && calib_stat){
    calib_stat = false;
  }

  if (puerta == open){                                //Si la compuerta está abierta
    if(!enRango(&inclinometro,anguloINF, anguloSUP,500) && digitalRead(IN)){     // y está inclinada
      compuerta.attach(PINS);                         
      compuerta.write(90+bonito);  
      puerta = !open;
      Serial.println("cerrando");                     //CIERRA LA COMPUERTA
      digitalWrite(OUT, HIGH);  //puerta cerrada
      delay(2500);
      compuerta.detach();
    }
  }
  if (puerta != open){
    compuerta.attach(PINS);
    delay(5000);
    compuerta.write(90+bonito);
  }
  if(!digitalRead(IN)){                              //Y piden abrirla
    compuerta.attach(PINS); 
    compuerta.write(0 + bonito);
    puerta = open;
    Serial.println("abriendo");                     //Abrir la puerta
    digitalWrite(OUT, LOW);     
    delay(2500);        
    compuerta.detach();   
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
      delay(t_tolerancia);
      gZ = inclinometro->getAccelerationZ();
      gZ /= float(factorSensibilidad);
      if (gZ < 0) gZ = -gZ;
      if(gZ < sin(float(90-limiteMAX)*2*PI/360))
      {
        return false;
      }
    }
  }else{
    if(gZ < anguloMin || gZ > anguloMax)
    {
      delay(t_tolerancia);
      gZ = inclinometro->getAccelerationZ();
      gZ /= float(factorSensibilidad);
      if (gZ < 0) gZ = -gZ;
      // Serial.print("gZ:");
      // Serial.println(gZ);
      // Serial.print("SinMax: ");
      // Serial.println(anguloMax);
      // Serial.print("SinMin: ");
      // Serial.println(anguloMin);
      if(gZ < anguloMin || gZ > anguloMax)
      {
        return false;
      }
    }
  }
  return true;
}
