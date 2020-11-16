#include <Servo.h>

Servo myServo;  // create servo object to control a servo
int servoPosition = 0;

void setup() {
  Serial.begin(9600);
  myServo.attach(9);
}


void loop() {
  while (Serial.available()) {
    int serialByte = Serial.read();  // reads a byte 0…255
    servoPosition = map(serialByte, 0, 255, 0, 180);  // scales to servo range
  }

  myServo.write(servoPosition);  // sets the servo position according to the scaled value
  delay(15);  // waits for the servo to get there
}
