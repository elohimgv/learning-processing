// If mouseX is 0, go to the beginning
// If mouseX is width, to to the end
// And everything else scrub in between

import processing.video.*;

Movie movie;

void setup() {
  size(960, 540); 
  background(0);
  movie = new Movie(this, "Happy woman enjoying the nature.mov");
  movie.play(); // which loops it once
}

void draw() {
  // Ratio of mouse X over width
  float ratio = mouseX / (float) width;
  // Jump to place in movie based on duration
  movie.jump(ratio*movie.duration());
  movie.read(); // Read frame
  image(movie, 0, 0); // display frame
}
