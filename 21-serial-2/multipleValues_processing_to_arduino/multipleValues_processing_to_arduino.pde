import processing.serial.*;

int NUM_OF_VALUES = 10;  /** YOU MUST CHANGE THIS ACCORDING TO YOUR PROJECT **/


Serial myPort;
String myString;

// This is the array of values you might want to send to Arduino.
int values[] = new int[NUM_OF_VALUES];

void setup() {
  size(500, 500);
  background(0);

  printArray(Serial.list());
  myPort = new Serial(this, Serial.list()[ PORT_INDEX ], 9600);
  // check the list of the ports,
  // find the port "/dev/cu.usbmodem----" or "/dev/tty.usbmodem----"
  // and replace PORT_INDEX above with the index of the port

  myPort.clear();
  // Throw out the first reading,
  // in case we started reading in the middle of a string from the sender.
  myString = myPort.readStringUntil( 10 );  // 10 = '\n'  Linefeed in ASCII
  myString = null;
}


void draw() {
  background(0);

  // changes the values
  for (int i=0; i<values.length; i++) {
    values[i] = i;  /** Feel free to change this!! **/
  }

  // sends the values to Arduino.
  sendSerialData();

  // This causes the communication to become slow and unstable. You might want
  // to comment this out when everything is ready. The parameter 200 is the
  // frequency of echoing. The higher this number, the slower the program will
  // be but the higher this number, the more stable it will be.
  echoSerialData(200);
}

void sendSerialData() {
  String data = "";
  for (int i=0; i<values.length; i++) {
    // if this is not the first element, add a comma after the previous element
    if (i > 0) {
      data += ","; // add separator character "," between each two values elements
    }
    data += values[i];
  }
  data += "\n"; // add the end of data character "\n"
  // write to Arduino
  myPort.write(data);
}


void echoSerialData(int frequency) {
  // Send character 'e' at the given frequency to request Arduino to send back
  // its values array
  if (frameCount % frequency == 0) myPort.write('e');

  String incomingBytes = "";
  while (myPort.available() > 0) {
    //add on all the characters received from the Arduino to the incomingBytes string
    incomingBytes += char(myPort.read());
  }
  // Print what Arduino sent back to Processing
  print( incomingBytes );
}
