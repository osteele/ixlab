PImage img;

void setup() {
  size(600, 404);
  img = loadImage("hokusai.jpg");
}

void draw() {
  clear();
  
  float dotSpacing = map(mouseX, 0, width, 1, 20); 
  float dotSize = map(mouseY, 0, height, 1, dotSpacing * 1.4);
  
  for (int x = 0; x < img.width; x += dotSpacing) {
    for (int y = 0; y < img.height; y += dotSpacing) {
      color c = img.get(x, y);
      fill(c);
      noStroke();
      circle(x, y, dotSize);
    }
  }
} 
