/*
* Author: Elohim Guevara
* Sketch name: toki_1_0.pde
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
  
  /*
  // Grid
  strokeWeight(0.2);
  for (int col = 0; col < width; col+=10) {
    for (int row = 0; row < width; row+=10) {
      line(col, 0, col, height);
      line(0, row, width, row);
    }
  }
  */
  
  noFill();
  strokeWeight(2.5);
  
  /* Toki FACE */
  ellipse(250, 130, 70, 70); // head
  line(220, 130, 230, 120); // right eyebrow
  point(230, 130); // right eye
  line(240, 113, 260, 113); // left eyebrow
  point(250, 120); // left eye
  line(240, 130, 240, 140); // nose
  line(240, 140, 250, 135); // nose
  line(240, 155, 245, 148); // mouth
  line(245, 148, 255, 148); // mouth
  
  /* Toki REST OF BODY */
  line(250, 165, 250, 280); // column
  line(250, 200, 220, 280); // right arm
  line(205, 280, 220, 280); // right hand
  line(250, 200, 235, 270); // left arm
  line(220, 270, 235, 270); // left hand
  line(250, 280, 315, 265); // left leg
  line(315, 265, 330, 330); // left leg 
  line(330, 330, 345, 330); // left foot
  line(250, 280, 310, 300); // right leg
  line(310, 300, 305, 365); // right leg
  line(305, 365, 320, 365); // right foot
}
