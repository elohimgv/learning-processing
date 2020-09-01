class Oscillator {
 float xtheta;
 float ytheta;
 float string_length_x;
 float oscillation_rate;
 float ratio_x;
 float ratio_y;
 float red;
 float green;
 float blue;
 float alpha;
 
 // Constructor
 Oscillator(float rate, float axe_x, float axe_y, float r, float g, float b) {
   xtheta = 0.0;
   ytheta = 0.0;
   oscillation_rate = rate;
   ratio_x = axe_x;
   ratio_y = axe_y;
   red = r;
   green = g;
   blue = b;
   alpha = 210;
 }
 
 void oscillate() {
   xtheta = xtheta + oscillation_rate;
   ytheta = ytheta + oscillation_rate;
 }
 
 void display() {
   float x = (sin(xtheta) + 1) * ratio_x;
   line(ratio_x, 0, x, ratio_y);
   fill(red, green, blue, alpha);
   ellipse(x, ratio_y, 16, 16);
 }
}
