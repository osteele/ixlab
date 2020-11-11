float[] xs = new float[10];
float[] ys = new float[10];

void setup() {
  size(600, 500);
  for (int i = 0; i < 10; i++) {
    xs[i] = random(width);
    ys[i] = random(40);
  }
}

void draw() {
  background(200);

  for (int i = 0; i < 10; i++) {
    circle(xs[i], ys[i], 20);
    ys[i] += 1;
  }
}
