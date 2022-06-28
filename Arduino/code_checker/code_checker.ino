#include <IRremote.h>

const int RECV_PIN = 7;

void setup(){
  Serial.begin(9600);
  IrReceiver.begin(RECV_PIN, true);
}

void loop(){
  if (IrReceiver.decode()){
    Serial.println(IrReceiver.decodedIRData.decodedRawData, HEX);
    IrReceiver.compensateAndPrintIRResultAsPronto(&Serial);
    IrReceiver.resume();
  }
}
