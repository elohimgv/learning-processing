// Global: array of int
int[] p = new int[5];

void setup() {
  size(200,200);
  frameRate(16);
  // Init array
  p[0] = 20; // 20% chance
  p[1] = 30; // 20% chance
  p[2] = 50; // 40% chance
  p[3] = 60; // 20% chance
  p[4] = 50;
}

void draw() {
  background(0);
  int index = (int(random(p.length)));
  // Draw a shape according to  20%  of probability  
  if (p[index] == 60) {
    rect(width/2, height/2, p[index], p[index]);
  }
}
