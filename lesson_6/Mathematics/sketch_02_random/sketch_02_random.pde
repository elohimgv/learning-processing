// Global vars
float[] balls;

void setup() {
  size(300, 300);
  // Init array
  balls = new float[20];
}

void draw() {
  // Add values from random function
  int index = (int(random(balls.length)));
  // Incremente values
  balls[index] = balls[index] + 3;
  
  int x = 0;
  while(x < balls.length) {
    fill(balls[x], 255, 255);
    ellipse(x*29, balls[x], 30, 30);
    x++;
  }
}
