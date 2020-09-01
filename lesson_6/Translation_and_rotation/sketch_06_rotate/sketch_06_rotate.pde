float theta = 0.0;
float s = 0.0;

void setup() {
  size(300, 300);  
}

void draw() {
  background(255);
  
  theta = PI*mouseX/width;
  s = mouseY; 
   
  translate(width/2, height/2);
  rotate(theta);
  // Right bottom line
  line(0, 0, width/5, height/5);
  fill(0);
  ellipse(width/5, height/5, s, s);
  // Left top line
  line(0, 0, -width/5, -height/5);
  ellipse(-width/5, -height/5, s, s);
}
