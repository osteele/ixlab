float[] xs = new float[10];
float[] ys = new float[10];

void setup() {
  size(600, 500);
  for (int i = 0; i < xs.length; i++) {
    xs[i] = random(width);
    ys[i] = random(height);
  }
}

void draw() {
  background(200);

  for (int i = 0; i < xs.length; i++) {
    circle(xs[i], ys[i], 20);
    ys[i] += 1;
  }
}
