import processing.video.*;

Movie movie;

void setup() {
  size(512, 384);
  movie = new Movie(this, "Jing'an.mp4");
  movie.loop();
}

void draw() {
  if (mousePressed) {
    if (movie.available()) {
      movie.read();
    }
  }
  image(movie, 0, 0, width, height);
}
