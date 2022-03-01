PImage source; // Source image
PImage destination; // Destination image

void setup() {
  size(200, 200);
  source = loadImage("nature0.jpg");
  destination = createImage(source.width, source.height, RGB);
}

void draw() {
  float threshold = mouseY;
  
  // We are going to look at both image's pixels
  source.loadPixels();
  destination.loadPixels();
  
  for (int x = 0; x < source.width; x++) {
    for (int y = 0; y < source.height; y++) {
      int loc = x + y * source.width;
      // Test the brightness against the threshold
      if (brightness(source.pixels[loc]) > threshold) {
        destination.pixels[loc] = color(255); // white
      } else {
        destination.pixels[loc] = color(0); // black
      }
    }
  }
  
  // We changed the pixels in destination
  destination.updatePixels();
  // Display the destination
  image(destination, 0, 0);
}