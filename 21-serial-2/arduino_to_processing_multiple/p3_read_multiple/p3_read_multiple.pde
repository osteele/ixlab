import processing.serial.*;

Serial myPort;
int n0 = 0;
int n1 = 0;

void setup() {
  size(640, 640);
  printArray(Serial.list());
  // Replace 0 in the following line by the index of your port,
  // as it appears in the console when you run this sketch.
  myPort = new Serial(this, Serial.list()[0], 9600);
  myPort.readStringUntil('\n');  // Discard the initial, possibly partial, line
}

void draw() {
  background(0);

  while (myPort.available() > 0) {
    String line = myPort.readStringUntil('\n');
    if (line != null) {
      String[] fields = line.split(",");
      printArray(fields);
      if (fields.length >= 2) {
        n0 = int(fields[0].trim());
        n1 = int(fields[1].trim());
      }
    }
  }
  ellipse(width/2, height/2, n0, n1);
}
