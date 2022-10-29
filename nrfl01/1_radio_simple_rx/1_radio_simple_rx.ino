// SimpleRx - the slave or the receiver

/**
    Posição dos pinos
    ---------------------------------------------------------------
Funciona?   nRF24L01* . rádio         CE(RST) CNS(SDA)  MOSI    MISO    SCK
    [OK]    Esp32          :          22      21        23      19      18
            Arduino Uno?   :          D9      D10       D11     D12     D13
 */

#include <SPI.h>
#include <RF24.h>
#include <nRF24L01.h>

// 
#define CE_PIN  22
#define CSN_PIN 21

#define FILTER_CODE "Az09"

const byte thisSlaveAddress[5] = {'R', 'x', 'A', 'A', 'A'};

RF24 radio(CE_PIN, CSN_PIN);

char dataReceived[10]; // this must match dataToSend in the TX
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

void showData()
{
   if (newData == true)
   {
      Serial.print("Data received ");
      Serial.println(dataReceived);
      newData = false;
   }
}