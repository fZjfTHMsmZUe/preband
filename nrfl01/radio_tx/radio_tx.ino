/*
  Teste com rádio

  Posição dos pinos
  ---------------------------------------------------------------
  nRF24L01* . rádio         CE(RST) CNS(SDA)  MOSI    MISO    SCK
  Esp32          :          22      21        23      19      18
  Arduino Uno? v3:          D9      D10       D11     D12     D13

  Como usar
  Atualização - acesse http://unibus.local/serverIndex:81
  Serial - acesse  http://unibus.local/webserial
  Comandos serial onibOS ----------------------------------------
  /m menu - menu principal do onibOS
  /s sobre o sistema
  /i info - exibe status como tarifa, conexão e afins
  /x tarefa atual - mostra a tarefa e comando atuais
  /r reinicia o aparelho

  Funções do código
  menu - manipula comandos e gerencia funções
  rfid - leitor de cartões NFC (chv, autent, ler, grav, ok)
  nrf - transmissor de rádioDIS
  tela - display 128x64
  pisca - controla pinos como led, buzzer e catraca
  strcmp - compara textos e bytes (100,30,30b)
  ln - println  | sp - print " "
  cmdS - comando serial
  . sistema de comunicação interna entre dois disp via RxTx
  . este código está configurado para ler até 128 bytes,
    portanto, o cmdS poderá enviar e receber dados dentro deste limite.

  Referências
  1. RFID: https://github.com/miguelbalboa/rfid
  2. NRF24: https://github.com/nRF24/RF24
  3. printf: http://tiny.cc/Printf
  4. strcmp: http://tiny.cc/strcmp
  5. ICSP: http://tiny.cc/icsp
  6. Nomeando variáveis: http://tiny.cc/via3jz https://devopedia.org/naming-conventions
  7. FTP: https://github.com/ldab/ESP32_FTPClient
  8. WebSerial: https://github.com/ayushsharma82/WebSerial
*/

#include <SPI.h>
#include <RF24.h>
#include <RF24Network.h>

int ce_rst = 4;
int cns_cs_sda = 21;
RF24 radio(ce_rst, cns_cs_sda);  // CE, CS

RF24Network network(radio);  // Network uses that radio

const uint16_t this_node = 01;   // Address of our node in Octal format
const uint16_t other_node = 00;  // Address of the other node in Octal format

const unsigned long interval = 2000;  // How often (in ms) to send 'hello world' to the other unit

unsigned long last_sent;     // When did we last send?
unsigned long packets_sent;  // How many have we sent already


struct payload_t {  // Structure of our payload
  unsigned long ms;
  unsigned long counter;
};

void setup(void) {
  Serial.begin(115200);
  while (!Serial) {
    // some boards need this because of native USB capability
  }
  Serial.println(F("RF24Network/examples/helloworld_tx/"));

  if (!radio.begin()) {
    Serial.println(F("Radio hardware not responding!"));
    while (1) {
      // hold in infinite loop
    }
  }
  radio.setChannel(90);
  network.begin(/*node address*/ this_node);
}

void loop() {

  network.update();  // Check the network regularly

  unsigned long now = millis();

  // If it's time to send a message, send it!
  if (now - last_sent >= interval) {
    last_sent = now;

    Serial.print(F("Sending... "));
    payload_t payload = { millis(), packets_sent++ };
    RF24NetworkHeader header(/*to node*/ other_node);
    bool ok = network.write(header, &payload, sizeof(payload));
    Serial.println(ok ? F("ok.") : F("failed."));
  }
}
