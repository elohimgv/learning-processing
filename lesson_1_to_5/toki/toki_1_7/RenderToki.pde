class RenderToki {
  // Variables for speed 'x' and 'y' positions
  float xspeed;
  float yspeed;
  
  // Variables for the body of toki
  float x_head;
  float y_head;
  int sizeHead;
  
  float x1_reyebrow;
  float y1_reyebrow;
  float x2_reyebrow;
  float y2_reyebrow;
  
  float x_reye;
  float y_reye;
  
  float x1_leyebrow;
  float y1_leyebrow;
  float x2_leyebrow;
  float y2_leyebrow;
  
  float x_leye;
  float y_leye;
  
  float x1_nose;
  float y1_nose;
  float x2_nose;
  float y2_nose;
  float x3_nose;
  float y3_nose;
  float x4_nose;
  float y4_nose;
  
  float x1_mouth;
  float y1_mouth;
  float x2_mouth;
  float y2_mouth;
  float x3_mouth;
  float y3_mouth;
  float x4_mouth;
  float y4_mouth;
  
  float x1_col;
  float y1_col;
  float x2_col;
  float y2_col;
  
  float x1_rarm;
  float y1_rarm;
  float x2_rarm;
  float y2_rarm;
  
  float x1_rhand;
  float y1_rhand;
  float x2_rhand;
  float y2_rhand;
  
  float x1_larm;
  float y1_larm;
  float x2_larm;
  float y2_larm;
  
  float x1_lhand;
  float y1_lhand;
  float x2_lhand;
  float y2_lhand;
  
  float x1_lleg;
  float y1_lleg;
  float x2_lleg;
  float y2_lleg;
  float x3_lleg;
  float y3_lleg;
  float x4_lleg;
  float y4_lleg;
  
  float x1_lfoot;
  float y1_lfoot;
  float x2_lfoot;
  float y2_lfoot;
  
  float x1_rleg;
  float y1_rleg;
  float x2_rleg;
  float y2_rleg;
  float x3_rleg;
  float y3_rleg;
  float x4_rleg;
  float y4_rleg;
  
  float x1_rfoot;
  float y1_rfoot;
  float x2_rfoot;
  float y2_rfoot;
  
  // Construct method
  RenderToki() {
    xspeed = 3;
    yspeed = 3;
    
    x_head = 250;
    y_head = 130;
    sizeHead = 70;
    
    x1_reyebrow = 220;
    y1_reyebrow = 130;
    x2_reyebrow = 230;
    y2_reyebrow = 120;
    
    x_reye = 230;
    y_reye = 130;
    
    x1_leyebrow = 240;
    y1_leyebrow = 113;
    x2_leyebrow = 260;
    y2_leyebrow = 113;
    
    x_leye = 250;
    y_leye = 120;
    
    x1_nose = 240;
    y1_nose = 130;
    x2_nose = 240;
    y2_nose = 140;
    x3_nose = 240;
    y3_nose = 140;
    x4_nose = 250;
    y4_nose = 135;
    
    x1_mouth = 240;
    y1_mouth = 155;
    x2_mouth = 245;
    y2_mouth = 148;
    x3_mouth = 245;
    y3_mouth = 148;
    x4_mouth = 255;
    y4_mouth = 148;
    
    x1_col = 250;
    y1_col = 165;
    x2_col = 250;
    y2_col = 280;
    
    x1_rarm = 250;
    y1_rarm = 200;
    x2_rarm = 220;
    y2_rarm = 280;
    
    x1_rhand = 205;
    y1_rhand = 280;
    x2_rhand = 220;
    y2_rhand = 280;
    
    x1_larm = 250;
    y1_larm = 200;
    x2_larm = 235;
    y2_larm = 270;
    
    x1_lhand = 220;
    y1_lhand = 270;
    x2_lhand = 235;
    y2_lhand = 270;
    
    x1_lleg = 250;
    y1_lleg = 280;
    x2_lleg = 315;
    y2_lleg = 265;
    x3_lleg = 315;
    y3_lleg = 265;
    x4_lleg = 330;
    y4_lleg = 330;
    
    x1_lfoot = 330;
    y1_lfoot = 330;
    x2_lfoot = 345;
    y2_lfoot = 330;
    
    x1_rleg = 250;
    y1_rleg = 280;
    x2_rleg = 310;
    y2_rleg = 300;
    x3_rleg = 310;
    y3_rleg = 300;
    x4_rleg = 305;
    y4_rleg = 365;
    
    x1_rfoot = 305;
    y1_rfoot = 365;
    x2_rfoot = 320;
    y2_rfoot = 365;
  }
  
  // Method
  void displayInformationLeftButton() {
    // Start with i as 0
    int i = 0;
    // While i is less than width of the window
    while (i < width+10) {
      noStroke();
      float distance = abs(mouseX - i);
      fill(distance);
      rect(i, 0, 10, height*2);
      // Increase i by 10
      i += 10;
    }
  }
  
  // Method
  void displayInformationRightButton() {
    for (int row = 0; row < width; row+=25) {
      for (int col = 0; col < height; col+=25) {
        fill(random(row), random(col), random(col));
        rect(row, col, 25, 25);
      }
    }
  }
  
  // Method
  void renderToki() {
    // Change the location of Toki by speed
    // Head 
    x_head = x_head + xspeed;
    y_head = y_head + yspeed;
    // Right eyebrow
    x1_reyebrow = x1_reyebrow + xspeed;
    y1_reyebrow = y1_reyebrow + yspeed;
    x2_reyebrow = x2_reyebrow + xspeed;
    y2_reyebrow = y2_reyebrow + yspeed;
    // Right eye
    x_reye = x_reye + xspeed;
    y_reye = y_reye + yspeed;
    // Left eyebrow
    x1_leyebrow = x1_leyebrow + xspeed;
    y1_leyebrow = y1_leyebrow + yspeed;
    x2_leyebrow = x2_leyebrow + xspeed;
    y2_leyebrow = y2_leyebrow + yspeed;
    // Left eye
    x_leye = x_leye + xspeed;
    y_leye = y_leye + yspeed;
    // Nose
    x1_nose = x1_nose + xspeed;
    y1_nose = y1_nose + yspeed;
    x2_nose = x2_nose + xspeed;
    y2_nose = y2_nose + yspeed;
    x3_nose = x3_nose + xspeed;
    y3_nose = y3_nose + yspeed;
    x4_nose = x4_nose + xspeed;
    y4_nose = y4_nose + yspeed;
    // Mouth
    x1_mouth = x1_mouth + xspeed;
    y1_mouth = y1_mouth + yspeed;
    x2_mouth = x2_mouth + xspeed;
    y2_mouth = y2_mouth + yspeed;
    x3_mouth = x3_mouth + xspeed;
    y3_mouth = y3_mouth + yspeed;
    x4_mouth = x4_mouth + xspeed;
    y4_mouth = y4_mouth + yspeed;
    // Column
    x1_col = x1_col + xspeed;
    y1_col = y1_col + yspeed;
    x2_col = x2_col + xspeed;
    y2_col = y2_col + yspeed;
    // Right arm
    x1_rarm = x1_rarm + xspeed;
    y1_rarm = y1_rarm + yspeed;
    x2_rarm = x2_rarm + xspeed;
    y2_rarm = y2_rarm + yspeed;
    // Right hand
    x1_rhand = x1_rhand + xspeed;
    y1_rhand = y1_rhand + yspeed;
    x2_rhand = x2_rhand + xspeed;
    y2_rhand = y2_rhand + yspeed;
    // Left arm
    x1_larm = x1_larm + xspeed;
    y1_larm = y1_larm + yspeed;
    x2_larm = x2_larm + xspeed;
    y2_larm = y2_larm + yspeed;
    // Left hand
    x1_lhand = x1_lhand + xspeed;
    y1_lhand = y1_lhand + yspeed;
    x2_lhand = x2_lhand + xspeed;
    y2_lhand = y2_lhand + yspeed;
    // Left leg
    x1_lleg = x1_lleg + xspeed;
    y1_lleg = y1_lleg + yspeed;
    x2_lleg = x2_lleg + xspeed;
    y2_lleg = y2_lleg + yspeed;
    x3_lleg = x3_lleg + xspeed;
    y3_lleg = y3_lleg + yspeed;
    x4_lleg = x4_lleg + xspeed;
    y4_lleg = y4_lleg + yspeed;
    // Left foot
    x1_lfoot = x1_lfoot + xspeed;
    y1_lfoot = y1_lfoot + yspeed;
    x2_lfoot = x2_lfoot + xspeed;
    y2_lfoot = y2_lfoot + yspeed;
    // Right leg
    x1_rleg = x1_rleg + xspeed;
    y1_rleg = y1_rleg + yspeed;
    x2_rleg = x2_rleg + xspeed;
    y2_rleg = y2_rleg + yspeed;
    x3_rleg = x3_rleg + xspeed;
    y3_rleg = y3_rleg + yspeed;
    x4_rleg = x4_rleg + xspeed;
    y4_rleg = y4_rleg + yspeed;
    // Right foot
    x1_rfoot = x1_rfoot + xspeed;
    y1_rfoot = y1_rfoot + yspeed;
    x2_rfoot = x2_rfoot + xspeed;
    y2_rfoot = y2_rfoot + yspeed;
      
    // The head (circle) how reference point
    // to create the collision of body
    if (x_head > width || x_head < 0) {
      xspeed = xspeed * -1;
    }
      
    if (y_head > height || y_head < 0) {
      yspeed = yspeed * -1;
    }
      
    // Setup settings to toki shape
    noFill();
    strokeWeight(2.5);
    stroke(255);
    
    /* Toki FACE */
    ellipse(x_head, y_head, sizeHead, sizeHead); // head
    line(x1_reyebrow, y1_reyebrow, x2_reyebrow, y2_reyebrow); // right eyebrow
    point(x_reye, y_reye); // right eye
    line(x1_leyebrow, y1_leyebrow, x2_leyebrow, y2_leyebrow); // left eyebrow
    point(x_leye, y_leye); // left eye
    line(x1_nose, y1_nose, x2_nose, y2_nose); // nose
    line(x3_nose, y3_nose, x4_nose, y4_nose); // nose
    line(x1_mouth, y1_mouth, x2_mouth, y2_mouth); // mouth
    line(x3_mouth, y3_mouth, x4_mouth, y4_mouth); // mouth
      
    /* Toki REST OF BODY */
    line(x1_col, y1_col, x2_col, y2_col); // column
    line(x1_rarm, y1_rarm, x2_rarm, y2_rarm); // right arm
    line(x1_rhand, y1_rhand, x2_rhand, y2_rhand); // right hand
    line(x1_larm, y1_larm, x2_larm, y2_larm); // left arm
    line(x1_lhand, y1_lhand, x2_lhand, y2_lhand); // left hand
    line(x1_lleg, y1_lleg, x2_lleg, y2_lleg); // left leg
    line(x3_lleg, y3_lleg, x4_lleg, y4_lleg); // left leg 
    line(x1_lfoot, y1_lfoot, x2_lfoot, y2_lfoot); // left foot
    line(x1_rleg, y1_rleg, x2_rleg, y2_rleg); // right leg
    line(x3_rleg, y3_rleg, x4_rleg, y4_rleg); // right leg
    line(x1_rfoot, y1_rfoot, x2_rfoot, y2_rfoot); // right foot
  }
}
