// Declare object
Person sprite;

void setup() {
  size(500, 500);
  // Initilize object
  sprite = new Person("data/person.png", 0.0f, width/2.0f, 0.0f);
}

void draw() {
  sprite.display();
  sprite.move();
}

class Person {
  PImage person; // A variable for the image file
  float x,y; // Variables for image location
  float rot; // A variable for image rotation
  
  Person(String filename, float x_location, float y_location, float r) {
    // Load image, initialize variable
    person = loadImage(filename);
    x = x_location;
    y = y_location;
    rot = r;
  }
  
  void display() {
    background(255);
    // Translate and rotate
    translate(x, y);
    rotate(rot);
    image(person, 0, 0, 63.9, 214.5); // draw image
  }
  
  void move() {
    // Adjust variables to creat animation
    rot += 0.01;
    x += 1.0;
    if (x > width) {
      x = 0;
    }
  }
}
