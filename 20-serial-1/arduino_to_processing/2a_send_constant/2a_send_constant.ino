void setup() {
  Serial.begin(9600);
}

void loop() {
  Serial.write(64);

  // Sending values too quickly might fill up Processing's buffers. This delay
  // resolves the issue.
  delay(10);
}}
