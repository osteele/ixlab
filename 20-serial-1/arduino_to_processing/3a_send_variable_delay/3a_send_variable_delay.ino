int n = 0;

void setup() {
  Serial.begin(9600);
}

void loop() {
  Serial.write(n);
  n += 1;
  delay(100);
}
