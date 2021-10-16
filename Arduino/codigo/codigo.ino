#include "MPU6050.h"
#include "Arduino_LSM9DS1.h"
//#include "LSM9DS1.h"
#define PI 3.14159
#define CALIB 6

// genera un objeto de la case MPU6050 
// con la dirección I2C predeterminada
//MPU6050 h;
MPU6050 inclinometro;
bool conectado = false;
bool calib_stat = false;
const uint8_t anguloLimite = 40;
int factorSensibilidad = 16384; //factor para una sensibilidad +-2g
float gZ;
void setup() {
  pinMode(CALIB, INPUT);
  // // inicializa y conecta con el inclinómetro
   Serial.begin(38400);
   inclinometro.initialize();
   conectado = inclinometro.testConnection();
}

void loop() {
  if (!conectado) return;

  //Debouncing simple para el botón de calibración
  if (digitalRead(CALIB) && !calib_stat){
    //Funcion de calibrar
    calib_stat = true;
  }
  if(!digitalRead(CALIB) && calib_stat){
    calib_stat = false;
  }

  gZ = inclinometro.getAccelerationZ();
  //if (gZ<0) gZ = -gZ;
  gZ /= float(factorSensibilidad);
  Serial.println(gZ);
  if(gZ < sin(float(90-anguloLimite)*2*PI/360)){
    Serial.println("Se murió :c");
  }
  //EL VALOR DE Y DEL ACELEROMETRO DEBE VALER 
  
  // put your main code here, to run repeatedly:
  
}
