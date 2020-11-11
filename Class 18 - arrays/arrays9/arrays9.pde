float[] xs = new float[2];
float[] ys = new float[2];

void setup() {
  size(600, 500);
  xs[0] = random(width);
  xs[1] = random(width);
  ys[0] = random(40);
  ys[1] = random(40);
}

void draw() {
  background(200);

  for (int i = 0; i < 2; i++) {
    circle(xs[i], ys[i], 20);
    ys[i] += 1;
  }
}
