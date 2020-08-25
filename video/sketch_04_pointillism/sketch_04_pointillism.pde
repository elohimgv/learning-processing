import processing.video.*;
Capture video;
int pointillize = 20;

void setup() {
  size(320, 240); 
  // Initialize Capture object via Constructor
  video = new Capture(this, 320, 240, 30); // video is 320x240, @30 fps 
  video.start();
}

void draw() {
  // Check to se if a new frame is available
  if (video.available()) {
    // If so, read it
    video.read();
  }
  // Pick a random point
  int x = int(random(video.width));
  int y = int(random(video.height));
  int loc = x + y * video.width;
  
  // Look up the RGB color in the source video
  loadPixels();
  float r = red(video.pixels[loc]);
  float g = green(video.pixels[loc]);
  float b = green(video.pixels[loc]);
  noStroke();
  
  // Draw an ellipse at that location with that color
  fill(r, g, b, 100);
  ellipse(x, y, pointillize, pointillize);
}

void mousePressed() {
  video.stop(); 
}
