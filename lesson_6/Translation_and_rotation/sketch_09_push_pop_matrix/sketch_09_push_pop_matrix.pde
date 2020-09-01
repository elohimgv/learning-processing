// An array of 8 planet objects
Planet[] planets = new Planet[8];
// An array of 8 moon objects
Moon[] moon = new Moon[8];

void setup() {
  size(500, 500, P3D);
  smooth();
  // The planet objects are initialized using the counter variable
  for (int i = 0; i < planets.length; i++) {
    planets[i] = new Planet(20 + i*10,i + 8);
    moon[i] = new Moon(3 + i*5, i + 3.5);
  }
}

void draw() {
  background(255);
  // Drawing the Sun
  pushMatrix();
  translate(width/2, height/2);
  stroke(0);
  fill(255);
  ellipse(0, 0, 20, 20);
  // Drawing all Planets
  for (int i = 0; i < planets.length; i++) {
    planets[i].update();
    planets[i].display();
    moon[i].update();
    moon[i].display();
  }
  popMatrix();
}

class Planet {
  float theta; // Rotation around sun
  float diameter; // Size of planet
  float distance; // Distance from sun
  float orbitspeed; // Orbit speed
  
  Planet(float distance_, float diameter_) {
    distance = distance_;
    diameter = diameter_;
    theta = 0;
    orbitspeed = random(0.01,0.03);
  }
  
  void update() {
    // Increment the angle to rotate
    theta += orbitspeed;
  }
  
  void display() {
    pushMatrix();
    rotate(theta); // rotate orbit
    translate(distance, 0); // translate out distance
    stroke(0);
    fill(0);
    ellipse(0, 0, diameter, diameter);
  }
}

class Moon {
  float theta; // Rotation around the planet
  float diameter; // Size of the moon
  float distance; // Distance from planet
  float orbitspeed; // Orbit speed
  
  Moon(float distance_, float diameter_) {
    distance = distance_;
    diameter = diameter_;
    theta = 0;
    orbitspeed = random(0.01,0.03);
  }
  
  void update() {
    // Increment the angle to rotate
    theta += orbitspeed;
  }
  
  void display() {
    pushMatrix();
    rotate(-theta*1.5); // rotate orbit
    translate(distance, 0); // translate out distance
    stroke(0);
    fill(175);
    ellipse(0, 0, diameter, diameter);
    // Afer we are done, restore matrix!
    popMatrix();
    popMatrix();
  }
}
