#include "SerialValueReader.h"

SerialValueReader reader(2); /** CHANGE THE NUMBER ACCORDING TO YOUR PROJECT **/

void setup() {
  Serial.begin(9600);
  pinMode(13, OUTPUT);
  pinMode(9, OUTPUT);
}

void loop() {
  reader.getSerialData();

  // add your code here
  // use elements in the values array
  // values[0]
  // values[1]
  if (reader.values[0] == 1) {
    digitalWrite(13, HIGH);
  } else {
    digitalWrite(13, LOW);
  }

  if (reader.values[1] == 1) {
    tone(9, reader.values[2]);
  } else {
    noTone(9);
  }
}
