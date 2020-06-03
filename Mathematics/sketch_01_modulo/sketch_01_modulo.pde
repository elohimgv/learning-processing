// Global vars
float[] pos_x;
float[] pos_y;

void setup() {
 size(300, 300); 
 
 // Init arrays
 pos_x = new float[20];
 pos_y = new float[20];
 
 for (int i = 1; i < pos_x.length+1; i++) {
   for (int j = 1; j < pos_y.length+1; j++) {
     if (pos_x.length%i != 0) {
       pos_x[i] = i*15;
     }
     if (pos_y.length%j != 0) {
       pos_y[j] = j*15;
     }
    } 
  }
}

void draw() {
  // Drawing with the array values
  for (int i = 0; i < pos_x.length; i++) {
    for (int j = 0; j < pos_y.length; j++) {
      fill(pos_x[i], pos_y[j], 240);
      ellipse(pos_x[i], pos_y[j], 10, 10);
    }
  }
}
