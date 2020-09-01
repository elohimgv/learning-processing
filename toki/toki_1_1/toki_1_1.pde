/*
* Author: Elohim Guevara
* Sketch name: toki_1_1.pde
*/

void setup() {
  // Sketch window size
  size(500, 500);
  smooth();
  print("Everything works fine!");
}

void draw() {
  // background
  background(255);
  
  noFill();
  strokeWeight(2.5);
  
  /* Toki FACE */
  ellipse(mouseX, mouseY, 70, 70); // head
  line(mouseX-30, mouseY, mouseX-22, mouseY-10); // right eyebrow
  point(mouseX-22, mouseY); // right eye
  line(mouseX-10, mouseY-20, mouseX+10, mouseY-20); // left eyebrow
  point(mouseX, mouseY-10); // left eye
  line(mouseX-10, mouseY, mouseX-10, mouseY+10); // nose
  line(mouseX-10, mouseY+10, mouseX, mouseY+5); // nose
  line(mouseX-10, mouseY+25, mouseX-5, mouseY+18); // mouth
  line(mouseX-5, mouseY+18, mouseX+5, mouseY+18); // mouth
  
  /* Toki REST OF BODY */
  line(mouseX, mouseY+35, mouseX, mouseY+150); // column
  line(mouseX, mouseY+70, mouseX-30, mouseY+150); // right arm
  line(mouseX-45, mouseY+150, mouseX-30, mouseY+150); // right hand
  line(mouseX, mouseY+70, mouseX-15, mouseY+140); // left arm
  line(mouseX-30, mouseY+140, mouseX-15, mouseY+140); // left hand
  line(mouseX, mouseY+150, mouseX+65, mouseY+135); // left leg
  line(mouseX+65, mouseY+135, mouseX+80, mouseY+210); // left leg
  line(mouseX+80, mouseY+210, mouseX+95, mouseY+210); // left foot
  line(mouseX, mouseY+150, mouseX+60, mouseY+170); // right leg
  line(mouseX+60, mouseY+170, mouseX+55, mouseY+235); // right leg
  line(mouseX+55, mouseY+235, mouseX+70, mouseY+235); // right foot
}
