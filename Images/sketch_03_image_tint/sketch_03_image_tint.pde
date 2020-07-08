PImage img;
float R, G, B;

void setup() {
  size(1366, 768);
  img = loadImage("data/paisaje.jpeg"); 
  R = 255;
  G = 255;
  B = 255;
  print(displayWidth, displayHeight);
}

void draw() {
  tint(R, G, B);
  image(img, 0, 0, 1366, 768);
  stroke(255);
  int counter = 0;
  while(counter < width) {
    line(counter, 0, counter, height);
    counter += width/3;
  }
  
  boolean red_area = mouseX >= 0 && mouseX < width/3; 
  boolean green_area = mouseX >= width/3 && mouseX < width/3*2;
  boolean blue_area = mouseX >= width/3*2 && mouseX < width/3*3;
  // Control Red
  if (red_area) {
    R = map(mouseX, 0, width/3, 255, 0);
  }
  // Control Green
  if (green_area) {
    B = map(mouseX, width/3, width/3*2, 255, 0);
  }
  // Control BLue
  if (blue_area) {
    B = map(mouseX, width/3*2, width/3*3, 255, 0);
  }
}
