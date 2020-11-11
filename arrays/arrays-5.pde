float[] xs = {100, 200};
float[] ys = {100, 100};

void setup() {
  size(600, 500);
}

void draw() {
  background(200);

  circle(xs[0], ys[0], 20);
  ys[0] += 1;

  circle(xs[1], ys[1], 20);
  ys[1] += 1;
}
