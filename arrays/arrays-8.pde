float[] xs = new float[2];
float[] ys = new float[2];

void setup() {
  size(600, 500);
  xs[0] = 100;
  xs[1] = 200;
  ys[0] = 100;
  ys[1] = 100;
}

void draw() {
  background(200);

  for (int i = 0; i < 2; i++) {
    circle(xs[i], ys[i], 20);
    ys[i] += 1;
  }
}
