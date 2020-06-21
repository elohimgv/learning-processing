void setup() {
  size(300, 300,P3D);
}

void draw() {
  background(255);
  drawPyramid(150);
}

void drawPyramid(int t) {
  stroke(0);
  translate(150,105,0);
  beginShape(TRIANGLES);
  // Right shape
  fill(255, 0, 0);
  vertex(0, t/2-30, -t/2);
  vertex(t, -t/2-50, -t/2-45);
  vertex(0, 0, t/2);
  // Left shape
  fill(0, 255, 0);
  vertex(0, t/2-30, -t/2);
  vertex(-t, -t/2-50, -t/2-45);
  vertex(0, 0, t/2);
  // Middle shape
  fill(0, 0, 255);
  vertex(t-15, -t/2-30, -t/2);
  vertex(-t+15, -t/2-30, -t/2);
  vertex(0, 0, t/2);
  endShape();
}
