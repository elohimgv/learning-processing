PImage img;

void setup() {
  size(245, 245);
  img = loadImage("nature0.jpg");
}

void draw() {
  loadPixels();
  // Since we are going to access the image's pixels too
  img.loadPixels();
  for (int y = 0; y < height; y+=2) {
    for (int x = 0; x < width; x+=2) {
      int loc = x + y * width;
      
      // Image Processing Algorithm would go here
      float r = red(img.pixels[loc]);
      float g = green(img.pixels[loc]);
      float b = blue(img.pixels[loc]);
      
      // Image Processing would go here
      
      // Set the display pixel to the image pixel
      pixels[loc] = color(r,g,b);
    }
  }
  updatePixels();
}
