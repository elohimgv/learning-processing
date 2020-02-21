/*
* Author: Elohim Guevara
* Sketch name: toki_1_4.pde
*/

// Variables for button
boolean button = false;
// Refactor of variables for button
float x_pos;
float y_pos;
int widthButton = 70;
int heightButton = 30;
// Variables for background color
float R = 150;
float G;
float B = 170;

// Variables for speed 'x' and 'y' positions
float xspeed = 2;
float yspeed = 2;

void setup() {
  // Sketch window size
  size(500, 500);
  smooth();
  frameRate(30);
  
  x_pos = width/2;
  y_pos = height/2+200;
}

void draw() {
  // Change the location of Toki by speed
  x_pos = x_pos + xspeed;
  y_pos = y_pos + yspeed;
  
  if (x_pos > width || x_pos < 0) {
    xspeed = xspeed * -1;
  }
  
  if (y_pos > height || y_pos < 0) {
    yspeed = yspeed * -1;
  }
  
  // Button
  G = random(0, 255);
  rectMode(CENTER);
  strokeWeight(1.5);
  
  if (button) {
    background(R, G, B);
    fill(255);
    stroke(0);
  } else {
    background(255);
    fill(0);
    stroke(255);
  }
  rect(x_pos, y_pos, widthButton, heightButton);

  // Setup settings to toki shape
  noFill();
  strokeWeight(2.5);
  stroke(mouseY);

  /* Toki FACE */
  ellipse(mouseX, mouseY, 70, 70); // head
  // The face is drawn according to the mouse location 
  // and the previous mouse location
  line(mouseX-30, mouseY, pmouseX-22, pmouseY-10); // right eyebrow
  point(mouseX-22, pmouseY); // right eye
  line(mouseX-10, mouseY-20, pmouseX+10, pmouseY-20); // left eyebrow
  point(mouseX, pmouseY-10); // left eye
  line(mouseX-10, mouseY, pmouseX-10, pmouseY+10); // nose
  line(mouseX-10, mouseY+10, pmouseX, pmouseY+5); // nose
  line(mouseX-10, mouseY+25, pmouseX-5, pmouseY+18); // mouth
  line(mouseX-5, mouseY+18, pmouseX+5, pmouseY+18); // mouth

  /* Toki REST OF BODY */
  line(mouseX, mouseY+35, mouseX, mouseY+150); // column
  line(mouseX, mouseY+70, mouseX-30, mouseY+150); // right arm
  line(mouseX-45, mouseY+150, mouseX-30, mouseY+150); // right hand
  line(mouseX, mouseY+70, mouseX-15, mouseY+140); // left arm
  line(mouseX-30, mouseY+140, mouseX-15, mouseY+140); // left hand
  // The legs are drawn according to the mouse location 
  // and the previous mouse location 
  line(mouseX, mouseY+150, pmouseX+65, pmouseY+135); // left leg
  line(mouseX+65, mouseY+135, pmouseX+80, pmouseY+210); // left leg
  line(mouseX+80, mouseY+210, pmouseX+95, pmouseY+210); // left foot
  line(mouseX, mouseY+150, pmouseX+60, pmouseY+170); // right leg
  line(mouseX+60, mouseY+170, pmouseX+55, pmouseY+235); // right leg
  line(mouseX+55, mouseY+235, pmouseX+70, pmouseY+235); // right foot
}

void mousePressed() {
  if (mouseX >= x_pos-(widthButton/2) && mouseX < x_pos+(widthButton/2) && mouseY >= y_pos-(heightButton/2) && mouseY < y_pos+(heightButton/2)) {
    button = !button;
  }
}
