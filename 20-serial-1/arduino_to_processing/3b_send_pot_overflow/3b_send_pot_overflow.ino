void setup() {
  Serial.begin(9600);
}

void loop() {
  int sensorValue = analogRead(A0);
  Serial.write(sensorValue);

  // Sending values too quickly might fill up Processing's buffers. This delay
  // resolves the issue.
  delay(10);
}
