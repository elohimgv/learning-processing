// Declaring a variable of type PImage
PImage img;

void setup() {
  size(540, 540);
  // Make a new instance of a PImage by loading an image file
  img = loadImage("data/Colores_Calidos_y_Fríos.png");
}

void draw() {
  background(0);
  image(img, 0, 0, mouseX, mouseY);
}
