float[] xs = {100, 200};
float[] ys = {100, 100};

void setup() {
  size(600, 500);
}

void draw() {
  background(200);

  for (int i = 0; i < 2; i++) {
    circle(xs[i], ys[i], 20);
    ys[i] += 1;
  }
}
