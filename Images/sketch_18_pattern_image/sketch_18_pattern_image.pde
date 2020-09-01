PImage img;
int pointillize = 16;

void setup() {
  size(960, 532);
  img = loadImage("paisaje.jpg");
  background(255);
  smooth();
}

void draw() {
  // Pick a random point
  int x = int(random(img.width));
  int y = int(random(img.height));
  int loc = x + y * img.width;
  
  // Look up the RGB color in the source image
  loadPixels();
  float r = red(img.pixels[loc]);
  float g = green(img.pixels[loc]);
  float b = blue(img.pixels[loc]);
  noStroke();
  
  // Draw a triangle at that location with that color
  fill(r, g, b, 100);  
  triangle(x, y, x/2, y/2, x+5, y+5);
}
