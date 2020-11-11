float[] xs = new float[2];
float[] ys = new float[2];

void setup() {
  size(600, 500);
  for (int i = 0; i < 2; i++) {
    xs[i] = random(width);
    ys[i] = random(height);
  }
}

void draw() {
  background(200);

  for (int i = 0; i < 2; i++) {
    circle(xs[i], ys[i], 20);
    ys[i] += 1;
  }
}
