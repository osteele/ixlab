PImage img;

void setup() {
  size(600, 404);
  img = loadImage("hokusai.jpg");
}

void draw() {
  int spacing = 5;
  
  for (int x = 0; x < img.width; x += spacing) {
    for (int y = 0; y < img.height; y += spacing) {
      color c = img.get(x, y);
      float dotSize = map(brightness(c), 255, 0, 0, spacing * 1.4);
      fill(0);
      noStroke();
      circle(x, y, dotSize);
    }
  }
} 
