// SimpleRx - the slave or the receiver

/**
    Posição dos pinos
    ---------------------------------------------------------------
Funciona?   nRF24L01* . rádio         CE(RST) CNS(SDA)  MOSI    MISO    SCK
    [OK]    Esp32          :          22      21        23      19      18
            Arduino Sat    :          9       10        11      12      13
            Arduino Rec    :          9       10        11      12      13
 */

#include <SPI.h>
#include <RF24.h>
#include <nRF24L01.h>

// 
#define ESP_CE_PIN  22
#define ESP_CSN_PIN 21
#define UNO_CE_PIN  22
#define UNO_CSN_PIN 21

#define DEBUG_MODE true

#define DATA_PASSWORD "Az09"

const byte thisSlaveAddress[5] = {'R', 'x', 'A', 'A', 'A'};

RF24 radio(UNO_CE_PIN, UNO_CSN_PIN);

char dataReceived[12]; // this must match dataToSend in the TX
bool newData = false;

//===========

void setup()
{

   Serial.begin(115200);
   Serial.println("SimpleRx Starting");
//    delay(3000);
   radio.begin();
   radio.setDataRate( RF24_250KBPS );
   radio.openReadingPipe(1, thisSlaveAddress);
   radio.startListening();
}

//=============

void loop()
{
   getData();
   showData();
}

//==============

void getData()
{
   if ( radio.available() )
   {
      radio.read( &dataReceived, sizeof(dataReceived) );
      newData = true;
   }
}

bool isSatData(){
   for(uint8_t i=0;i<sizeof(DATA_PASSWORD);i++){
      if (dataReceived[i] != DATA_PASSWORD[i]) return false;
   }
   return true;
}

void showData()
{
   if (newData && (isSatData() || DEBUG_MODE))
   {
      Serial.print("Data received ");
      Serial.println(dataReceived);
      newData = false;
   }
   // if (DEBUG_MODE) delay(500);
}