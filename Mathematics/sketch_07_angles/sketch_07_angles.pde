// Declara object
Oscillator[] o = new Oscillator[50]; 

void setup() {
 size(700, 300);
 smooth();
 // Create object
 int i = 0;
 while (i < o.length) {
   o[i] = new Oscillator(random(0.01, 0.09), random(100, 600), random(120, 225), random(95, 210), random(150, 240), random(100, 250));
   i++;
 }
}

void draw() {
 background(255);
 int i = 0;
 while(i < o.length) {
   o[i].oscillate();
   o[i].display();
   i++; 
 }
}
