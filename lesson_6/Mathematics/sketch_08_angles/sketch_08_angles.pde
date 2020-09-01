// Starting angle
float theta = 0.0;

void setup() {
 size(200, 350);
 smooth();
}

void draw() {
 background(255);
 
 // Increment theta (try different values for "angular velocity" here)
 theta += 0.02;
 
 noStroke();
 fill(0);
 
 float x = theta;
 // A simple way to draw the were with an ellipse at each location
 for (int i = 0; i <= 20; i++) {
   // Calculate y value based off of noise function
   // But instead of noise use sin function
   float y = noise(x)*height/2;
   // Draw an ellipse
   ellipse(i*10, y+height/2, 16, 16);
   // Move along x-axis
   x += 0.2;
 }
}
