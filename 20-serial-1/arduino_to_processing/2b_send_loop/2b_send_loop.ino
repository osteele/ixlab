void setup() {
  Serial.begin(9600);
}

void loop() {
  for (int i = 0; i < 255; i++) {
    Serial.write(i);

    // Sending values too quickly might fill up Processing's buffers. This delay
    // resolves the issue.
    delay(10);
  }
}
