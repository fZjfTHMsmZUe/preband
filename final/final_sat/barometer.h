#include <MQUnifiedsensor.h>

/* Definições da MQ135 */
#define RatioMQ135CleanAir 3.6
#define placa "Arduino UNO"
#define Voltage_Resolution 5
#define pin A0
#define type "MQ-135"
#define ADC_Bit_Resolution 10
#define RatioMQ135CleanAir 3.6

/* Declarando bmp e MQ135 */
MQUnifiedsensor MQ135(placa, Voltage_Resolution, ADC_Bit_Resolution, pin, type);

void barometerSetup()
{
  MQ135.setRegressionMethod(1); /* Inicia o MQ135 */
  MQ135.init();

  float calcR0 = 0; /* Formula de calibração do MQ135 */
  for (int i = 1; i <= 10; i++)
  {
    MQ135.update();
    calcR0 += MQ135.calibrate(RatioMQ135CleanAir);
  }
  MQ135.setR0(calcR0 / 10);
}

double getCO()
{
  return MQ135.readSensor();
  MQ135.setA(605.18);
  MQ135.setB(-3.937);
}
double getAlcohol()
{
  return MQ135.readSensor();
  MQ135.setA(77.255);
  MQ135.setB(-3.18);
}
double getNH4()
{
  return MQ135.readSensor();
  MQ135.setA(102.2);
  MQ135.setB(-2.473);
}
double getAcetona()
{
  return MQ135.readSensor();
  MQ135.setA(34.668);
  MQ135.setB(-3.369);
}
double getCO2()
{
  return MQ135.readSensor();
  MQ135.setA(110.47);
  MQ135.setB(-2.862);
}

void barometerUpdate(){
  MQ135.update();
}