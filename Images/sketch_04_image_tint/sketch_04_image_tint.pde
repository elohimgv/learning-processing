PImage[] images = new PImage[5];
String[] filenames = {"nature01.jpg", "nature02.jpg", "nature03.jpg", "nature04.jpg", "nature05.jpg", "nature06"};
float alpha;
float x,y;

void setup() {
  size(300, 300);
  frameRate(10);
  for (int i = 0; i < images.length; i++) {
    images[i] = loadImage(filenames[i]);
  }
  alpha = random(80, 100);
}

void draw() {
  for (int i = 0; i < images.length; i++) {
    x = random(0, 50);
    y = random(0, 50);
    tint(255, 255, 255, alpha);
    image(images[i], x, y);
  } 
}
