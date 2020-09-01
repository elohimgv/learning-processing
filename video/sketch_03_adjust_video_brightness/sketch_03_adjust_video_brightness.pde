import processing.video.*;
Capture video;

void setup() {
  size(320, 240);
  // Initialize Capture object via constructor
  video = new Capture(this, 320, 240, 30); // video is 320x240, @30 fps
  video.start();
  background(0);
}

void draw() {
  // Check to se if a new frame is available
  if (video.available()) {
    // If so, read it
    video.read();
  }
  
  loadPixels();
  video.loadPixels();
  for (int x = 0; x < video.width; x++) {
    for (int y = 0; y < video.height; y++) {
      // Calculate the 1D location from a 2D grid
      int loc = x + y * video.width;
      // get the R,G,B values from image
      float r,g,b;
      r = red(video.pixels[loc]);
      g = green(video.pixels[loc]);
      b = blue(video.pixels[loc]);
      
      // Calculate an amount to change brightness based on proximity
      float maxdist = 100; // dist(0, 0, width, height);
      float d = dist(x, y, mouseX, mouseY);
      float adjustbrightness = (maxdist - d)/maxdist;
      r *= adjustbrightness;
      g *= adjustbrightness;
      b *= adjustbrightness;
      // constrain RGB to make sure they are within 0-255 color range
      r = constrain(r, 0, 255);
      g = constrain(g, 0, 255);
      b = constrain(b, 0, 255);
      // Make a new color set pixel in the window
      color c = color(r,g,b);
      pixels[loc] = c;
    }
  }
  updatePixels();
}
