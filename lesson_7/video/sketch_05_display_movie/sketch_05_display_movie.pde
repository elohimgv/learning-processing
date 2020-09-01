import processing.video.*;
// Processing's video library only accepts
// movies in QuickTime format.
Movie movie; // Declaring a Movie object

void setup() {
  size(960, 540);
  // Make a new instances of Movie object via Constructor
  movie = new Movie(this, "Happy woman enjoying the nature.mov"); 
  //movie.play(); // whichs plays the movie once
  movie.loop(); // which loops it continuously 
}

// Read new frames from movie
void movieEvent(Movie movie) {
  movie.read();
}


void draw() {
  // Display movie
  image(movie, 0, 0);
}
