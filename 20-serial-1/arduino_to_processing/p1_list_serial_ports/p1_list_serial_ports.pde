import processing.serial.*;

void setup() {
  String[] portNames = Serial.list();
  printArray(portNames);
}
