// Noise "time" variables
float xtime = 0.0;
float ytime = 100.0;
float increment = 0.01;

void setup() {
 size(200, 200);
 smooth();
}

void draw() {
 background(0);
 float x = xtime;
 float y = ytime;
 xtime = xtime + increment;
 ytime = ytime + increment;
 
 // Draw the ellipse with size determined by Perlin noise
 fill(200);
 ellipse(x, y, 50, 50);
}
