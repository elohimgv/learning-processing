/*
* Author: Elohim Guevara
* Sketch name: toki_1_7.pde
*/

// Declare array of objects 
RenderToki[] t = new RenderToki[6];

// Variables for button
boolean leftButton = false;
boolean rightButton = false;
// Variables for buttons
float leftButton_x_pos;
float leftButton_y_pos;
float rightButton_x_pos;
float rightButton_y_pos;
int widthButton = 70;
int heightButton = 30;


void setup() {
  // Sketch window size
  size(500, 500);
  smooth();
  frameRate(30);
  
  // Initialize objects
  for (int i = 0; i < t.length; i++) {
    t[i] = new RenderToki(true, 40 + (i * 5));
  }
  
  // Initialize vars
  leftButton_x_pos = width-400;
  leftButton_y_pos = height/2+200;
  rightButton_x_pos = width-160;
  rightButton_y_pos = height/2+200;
}

void draw() {
  // Button left
  if (leftButton || rightButton) {
    if (leftButton) {
      for (int i = 0; i < t.length; i++) {
        t[i].displayInformationLeftButton();
      }
    } else {
      for (int i = 0; i < t.length; i++) {
        t[i].displayInformationRightButton();
      } 
    }
    for (int i = 0; i < t.length; i++) {
      t[i].renderToki();
    }
    // Parameters for button style
    strokeWeight(1.5);
    fill(255);
    stroke(0);
  } else {
    background(255);
    fill(0);
    stroke(255);
  }
  rect(leftButton_x_pos, leftButton_y_pos, widthButton, heightButton);
  rect(rightButton_x_pos, rightButton_y_pos, widthButton, heightButton);
}

void mousePressed() {
  // Vars for left button
  boolean a = mouseX >= leftButton_x_pos;
  boolean b = mouseX < leftButton_x_pos+(widthButton);
  boolean c = mouseY >= leftButton_y_pos;
  boolean d = mouseY < leftButton_y_pos+(heightButton);
  // Vars for right button
  boolean e = mouseX >= rightButton_x_pos;
  boolean f = mouseX < rightButton_x_pos+(widthButton);
  boolean g = mouseY >= rightButton_y_pos;
  boolean h = mouseY < rightButton_y_pos+(heightButton);
  
  // Activate left button
  if (a && b && c && d && mouseButton == LEFT) {
    if (rightButton == false) {
      leftButton = !leftButton;
    }  
  }

  // Activate right button
  if (e && f && g && h && mouseButton == RIGHT) {
    if (leftButton == false) {
      rightButton = !rightButton;
    }
  }
}
