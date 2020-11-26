PImage img;

void setup() {
  size(600, 404);
  img = loadImage("hokusai.jpg");
}

void draw() {
  image(img, 0, 0);
  
  color c = img.get(mouseX, mouseY);
  // draw a circle with the color
  fill(c);
  noStroke();
  stroke(lerpColor(c, color(0), 0.5));
  circle(mouseX, mouseY, 50);
} 
