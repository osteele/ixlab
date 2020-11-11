float x1 = 100;
float y1 = 100;

float x2 = 200;
float y2 = 100;

void setup() {
  size(600, 500);
}

void draw() {
  background(200);

  circle(x1, y1, 20);
  y1 += 1;

  circle(x2, y2, 20);
  y2 += 1;
}
