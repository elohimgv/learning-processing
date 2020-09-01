void setup() {
  size(300, 300, P3D); 
}

void draw() {
  background(255);
  drawCube(100);
}

void drawCube(int t) {
  stroke(0);
  translate(width/2, height/2, 0);
  beginShape(QUADS);
  noFill();
  vertex(0, 0, t); // 1
  vertex(t, 0, 0); // 2
  vertex(t, t, 0); // 3
  vertex(0, t, 0); // 4
  
  vertex(0, 0, -t); // 5
  vertex(t, 0, -t); // 6
  vertex(t, t, -t); // 7
  vertex(0, t, -t); // 8
  endShape();
}
