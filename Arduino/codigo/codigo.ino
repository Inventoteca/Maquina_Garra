//#include "MPU6050.h"
#include "Arduino_LSM9DS1.h"
//#include "LSM9DS1.h"
#define PI 3.14159

// genera un objeto de la case MPU6050 
// con la dirección I2C predeterminada
//MPU6050 h;
//MPU6050 inclinometro;
bool conectado = false;
const uint8_t anguloLimite = 40;
int factorSensibilidad = 16384; //factor para una sensibilidad +-2g
float gY;
float garb;
void setup() {
  //PARA EL LSM9DS1
  IMU.begin();
  // // put your setup code here, to run once:
  // // inicializa y conecta con el inclinómetro
   Serial.begin(115200);
  // inclinometro.initialize();
  // conectado = inclinometro.testConnection();
  // if(conectado){
  //   inclinometro.setDMPEnabled(false);
  //   //inclinometro.setMotionDetectionThreshold(50);
  //   inclinometro.setStandbyXGyroEnabled(true);
  //   inclinometro.setStandbyYGyroEnabled(true);
  //   inclinometro.setStandbyZGyroEnabled(true);
  //   Serial.println(inclinometro.getDeviceID());
  //   Serial.println(inclinometro.getFullScaleAccelRange());
  //   Serial.println(inclinometro.getExternalFrameSync());
  //   inclinometro.CalibrateAccel();
  //}
}

void loop() {
  //if (!conectado) return;
  if(IMU.accelerationAvailable()){
    IMU.readAcceleration(garb,garb,gY);
    Serial.println(gY);
    if (gY<0) gY = -gY;
    //gY /= float(factorSensibilidad);

    if(gY < sin(float(90-anguloLimite)*2*PI/360)){
      Serial.println("Se murió :c");
    }
  }
  //gY = inclinometro.getAccelerationY();
 // Serial.println(gY);
 // if (gY<0) gY = -gY;
 // gY /= float(factorSensibilidad);

  //if(gY < sin(float(90-anguloLimite)*2*PI/360)){
    //Serial.println("Se murió :c");
  //}
  //EL VALOR DE Y DEL ACELEROMETRO DEBE VALER 
  
  // put your main code here, to run repeatedly:
  
}
