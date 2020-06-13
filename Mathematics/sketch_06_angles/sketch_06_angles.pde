// Polar cordinates
float r = 75.0;
float theta = 50.0;

void setup() {
   size(300, 300);
   //background(0);
}

void draw() {
  background(0);
  float x = r * sin(theta);
  float y = r * cos(theta);
  noStroke();
  triangle(width/2, height/2, width/2+80, height/2-80, x+width/2+80, y+height/2);
  stroke(255, 0, 0);
  strokeWeight(10);
  point(x+width/2+80, y+height/2);
  
  // Increment the angle
  theta = theta + 0.1;
}
