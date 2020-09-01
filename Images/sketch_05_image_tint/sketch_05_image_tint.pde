int maxImages = 6;
int imageIndex = 0;
PImage[] img = new PImage[6]; 
float alpha;
float x,y;

void setup() {
  size(300, 300);
  // Load images
  for (int i = 0; i < img.length; i++) {
    img[i] = loadImage("nature" + i + ".jpg");
  }
  alpha = random(80, 100);
  x = random(0, 50);
  y = random(0, 50);
}

void draw() {
  tint(255, alpha);
  image(img[imageIndex], x, y);
}

void mousePressed() {
  imageIndex = int(random(img.length));
}
