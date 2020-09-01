PImage img;

void setup() {
  size(256, 256);
  img = loadImage("nature0.jpg");
}


void draw() {
  loadPixels();
  img.loadPixels();
  // Since we are looking at left neighbors
  // We skip the first column 
  for (int x = 1; x < width; x++) {
    for (int y = 0; y < height; y++) {
      // Pixel location and color
      int loc = x + y * img.width;
      color pix = img.pixels[loc];
      
      // Pixel to the left location and color
      int leftLoc = (x-1) + y * img.width;
      color leftPix = img.pixels[leftLoc];
      // New color is difference between pixel and left neighbor
      float diff = abs(brightness(pix) - brightness(leftPix));
      pixels[loc] = color(diff);
    } 
  }
  updatePixels();
}
