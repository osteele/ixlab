import processing.serial.*;

Serial myPort;

void setup() {
  size(640, 640);
  printArray(Serial.list());
  // See the comment in the previous example
  myPort = new Serial(this, "/dev/cu.usbmodem14101", 9600);
}

void draw() {
  background(0);
  if (myPort.available() > 0) {
    int n = myPort.read();
    circle(width/2, height/2, n);
  }
}
