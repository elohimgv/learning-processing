Sequencer s1, s2, s3; 

void setup() {
  size(900, 300);
  s1 = new Sequencer(0, 0, 1000/5f);
  s2 = new Sequencer(300, 0, 1000/10f);
  s3 = new Sequencer(600, 0, 1000/20f);
}

void draw() {
  s1.display();
  s2.display();
  s3.display();
}
