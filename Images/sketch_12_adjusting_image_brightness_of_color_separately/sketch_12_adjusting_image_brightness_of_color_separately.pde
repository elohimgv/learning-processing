PImage img;

void setup() {
  size(256, 256);
  img = loadImage("nature0.jpg");
}

void draw() {
 loadPixels(); 
 // Since we are going to access the image's pixels too
 img.loadPixels();
 for (int x = 0; x < img.width; x++) {
   for (int y = 0; y < img.height; y++) {
     // Calculate the ID pixel location
     int loc = x + y * img.width;
     // Get the R,G,B values from image
     float r = red(img.pixels[loc]);
     float g = green(img.pixels[loc]);
     float b = blue(img.pixels[loc]);
     // Calculate an amount to change brightness
     // based on proximity to the mouse
     float adjustBrightnessRed = mouseX/50;
     float adjustBrightnessGreen = mouseY/50;
     float distance = dist(x, y, mouseX, mouseY);
     float adjustBrightnessBlue = (50 - distance) / 50;  
     r *= adjustBrightnessRed;
     g *= adjustBrightnessGreen;
     b *= adjustBrightnessBlue;
     // Constrain RGB to between 0-255
     r = constrain(r,0,255);
     g = constrain(g,0,255);
     b = constrain(b,0,255);
     // Make a new color and set pixel in the window
     color c = color(r,g,b);
     pixels[loc] = c;
   }
 }
 updatePixels();
}
