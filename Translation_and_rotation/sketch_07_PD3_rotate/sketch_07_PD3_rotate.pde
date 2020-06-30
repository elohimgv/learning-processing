float theta = 0.0;

void setup() {
  size(500,500,P3D);
}

void draw() {
  background(144);
  theta += 0.01;
  rotateX(theta);
  rotateY(theta);
  drawPyramid(150);
}

void drawPyramid(int t) {
  stroke(0);
  translate(width/2, height/2, 0);
  beginShape(TRIANGLES);
  // Top trianble
  fill(150,0,0,127);
  vertex(-t, -t, -t);
  vertex(t, -t, -t);
  vertex( 0, -t/5, t/2);
  // Right triangle
  fill(0,150,0,127);
  vertex(0, -t/2, -t/2);
  vertex( t, -t, -t);
  vertex( 0, 0, t/2);
  // Left triangle
  fill(0,0,150,127);
  vertex( 0, -t/2, -t/2);
  vertex(-t, -t, -t);
  vertex( 0, 0, t/2);
  // Base triangle
  fill(150,0,150,127);
  vertex(-t, -t, -t);
  vertex(t, -t, -t);
  vertex(0, 0, t);
  endShape();
}
