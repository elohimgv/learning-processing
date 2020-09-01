// Global var
float prob = 0.90; // A probability of 90%
float r; 

void setup() {
 size(300, 300); 
 background(0);
}

void draw() {
 r = random(1); // A random floating point value from 0 and 1
 stroke(255);
 if (prob < r) { // If our random is less than 0.90
   point(random(width), random(height));
 }
}
