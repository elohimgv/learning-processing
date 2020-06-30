float theta = 0.0;

void setup() {
  size(300, 300, P3D); 
}

void draw() {
  background(255);
  drawCube(100);
}

void drawCube(int t) {
  theta += 0.02;
  
  stroke(0);
  translate(width/2, height/2, 0);
  rotateX(theta);
  rotateY(theta);
  beginShape(QUADS);
  fill(150, 180, 90);
  //noFill();
  vertex(0, 0, 0); // 1
  vertex(t, 0, 0); // 2
  vertex(t, t, 0); // 3
  vertex(0, t, 0); // 4
  fill(180, 150, 190);
  vertex(0, 0, -t); // 5
  vertex(t, 0, -t); // 6
  vertex(t, t, -t); // 7
  vertex(0, t, -t); // 8
  endShape();
}
