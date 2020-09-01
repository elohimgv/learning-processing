size(250, 250);
loadPixels();
// Loop through every pixel column
for (int x = 0; x < width; x++) {
  for (int y = 0; y < height; y++) {
    int loc = x + y * width;
    if (x < width && x <= width/2) {
      pixels[loc] = color(x);
    } else {
      pixels[loc] = color(y); 
    }
  }
}
updatePixels();
