int DOT_COUNT = 10;
float[] xs = new float[DOT_COUNT];
float[] ys = new float[DOT_COUNT];
float speed = 1;

void setup() {
  size(600, 500);
  for (int i = 0; i < xs.length; i++) {
    xs[i] = random(width);
    ys[i] = random(40);
  }
}

void draw() {
  background(200);

  for (int i = 0; i < xs.length; i++) {
    circle(xs[i], ys[i], 20);
    ys[i] += speed;
  }
}
