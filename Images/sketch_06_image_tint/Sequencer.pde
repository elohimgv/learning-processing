class Sequencer {
  int maxImages;
  int imageIndex;
  PImage[] img; 
  float x,y;
  float rate;
  int timer;
  
  Sequencer(float pos_x, float pos_y, float r) {
    maxImages = 6;
    imageIndex = 0;
    img = new PImage[6];
    x = pos_x;
    y = pos_y;
    rate = r; 
    timer = 0;
    
    // Load images
    for (int i = 0; i < img.length; i++) {
      img[i] = loadImage("nature" + i + ".jpg");
    }
  }
  
  void display() {
    if (millis() > timer) {
      render();
      timer += rate;
    }
  }
  
  void render() {
    image(img[imageIndex], x, y);
    // increment image index by one each cycle
    // use modulo "%" to return to 0 once the size
    // of the array is reached
    imageIndex = (imageIndex + 1) % img.length;
  }
}
