int n = 0;

void setup() {
  Serial.begin(9600);
}

void loop() {
  Serial.write(n);
  n += 1;

  // Sending values too quickly might fill up Processing's buffers. This delay
  // resolves the issue.
  delay(10);
}
