PImage img;

void setup() {
  size(600, 404);
  img = loadImage("hokusai.jpg");
}

void draw() {
  clear();
  
  float dotSize = map(mouseX, 0, width, 1, 10);
  for (int x = 0; x < img.width; x += 10) {
    for (int y = 0; y < img.height; y += 10) {
      color c = img.get(x, y);
      fill(c);
      noStroke();
      circle(x, y, dotSize);
    }
  }
} 
