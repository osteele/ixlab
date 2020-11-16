import processing.serial.*;

Serial myPort;

void setup() {
  size(800, 50);

  // See the comment in the previous example
  myPort = new Serial(this, "/dev/cu.usbmodem14101", 9600);
}

void draw() {
  int value = floor(map(mouseX, 0, width, 0, 256));
  myPort.write(value);
  
  background(0);
  rect(0, height / 2, mouseX, height / 2);
  text("Mouse: " + mouseX + "; serial byte = " + value, width / 2, height / 3);
}
