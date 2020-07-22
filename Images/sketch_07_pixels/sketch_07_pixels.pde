size(250, 250);
loadPixels();
// Loop through every pixel column
for (int x = 0; x < width; x++) {
  for (int y = 0; y < height; y++) {
    int loc = x + y * width;
    float distance = dist(width/2, height/2, x, y); 
    pixels[loc] = color(distance);
  }
}
updatePixels();
