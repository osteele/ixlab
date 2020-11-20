void setup() {
  Serial.begin(9600);
}

void loop() {
  int sensorValue0 = analogRead(A0);
  int sensorValue1 = analogRead(A1);

  Serial.print(sensorValue0);
  Serial.print(",");
  Serial.print(sensorValue0);
  Serial.print("\n");

  // Sending values too quickly might fill up Processing's buffers. This delay
  // resolves the issue.
  delay(10);
}
