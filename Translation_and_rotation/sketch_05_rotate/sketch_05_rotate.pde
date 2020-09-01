float theta = 0.0;
float s = 0.0;

void setup() {
  size(300, 300);  
}

void draw() {
  rectMode(CENTER);
  
  theta = PI*mouseX/width;
  s = mouseY;
   
  translate(width/2, height/2);
  rotate(theta);
  rect(0, 0, s, s);
}
