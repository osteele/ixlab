import processing.serial.*;

Serial myPort;

void setup() {
  size(500, 500);

  // See the comment in the previous example
  myPort = new Serial(this, "/dev/cu.usbmodem14101", 9600);
}


void draw() {
  background(0);
  if (mousePressed) {
    myPort.write('H');
    circle(width / 2, height / 2, 200);
  } else {
    myPort.write('L');
  }
}
