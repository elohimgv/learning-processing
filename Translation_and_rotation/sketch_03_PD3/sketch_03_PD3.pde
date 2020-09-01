void setup() {
  size(200,200,P3D);
}

void draw() {
  background(255);
  drawPyramid(150);
}

void drawPyramid(int t) {
  stroke(0);
  translate(100, 100, 0);
  beginShape(TRIANGLES);
  // Top trianble
  fill(0, 0, 150);
  vertex(-t, -t, -t);
  vertex(t, -t, -t);
  vertex( 0, -t/5, t/2);
  // Right triangle
  fill(150, 0, 0);
  vertex(0, -t/2, -t/2);
  vertex( t, -t, -t);
  vertex( 0, 0, t/2);
  // Left triangle
  fill(0, 150, 0);
  vertex( 0, -t/2, -t/2);
  vertex(-t, -t, -t);
  vertex( 0, 0, t/2);
  // Base triangle
  fill(255, 40);
  vertex(-t, -t, -t);
  vertex(t, -t, -t);
  vertex(0, 0, t);
  endShape();
}
