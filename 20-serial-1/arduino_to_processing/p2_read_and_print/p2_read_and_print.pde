import processing.serial.*;

Serial myPort;

void setup() {
  printArray(Serial.list());
  // You will probably see an error in the console:
  //   RuntimeException: Error opening serial port /dev/cu.usbmodem14101: Port not found
  // To fix this:
  //   Change the string below to the port that is connected to the Arduino.
  myPort = new Serial(this, "/dev/cu.usbmodem14101", 9600);
}

void draw() {
  background(0);
  if (myPort.available() > 0) {
    int n = myPort.read();
    println(n);
  }
}
