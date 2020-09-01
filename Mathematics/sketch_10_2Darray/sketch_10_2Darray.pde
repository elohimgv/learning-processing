Cell[][] board;

int cols = 3;
int rows = 3;
int w;
int h;

void setup() {
 size(300, 300);
 w = width/3;
 h = height/3;
 board = new Cell[cols][rows];
 for (int i = 0; i < cols; i++) {
   for (int j = 0; j < rows; j++) {
     board[i][j] = new Cell(i*w, j*h, w, h);
   }
 }
}

void draw() {
   for (int i = 0; i < cols; i++) {
     for (int j = 0; j < rows; j++) {
       if (board[i][j].state == true) {  
         fill(255);
       } else {
         colorMode(HSB);
         fill(336, 80, 99);
       }
       board[i][j].display();
     }
   }
}

void mousePressed() {
  for (int i = 0; i < cols; i++) {
    for (int j = 0; j < rows; j++) {
      if (mouseX > i*w && mouseY > j*h && mouseX < i*w + w && mouseY < j*h + h) {
        board[i][j].state = !board[i][j].state;
        print(board[i][j].state);
      } 
    } 
  }
}

// A Cell object
class Cell {
  float x,y;
  float w,h;
  boolean state;
  
  // Cell constructor
  Cell(float tempX, float tempY, float tempW, float tempH) {
    x = tempX;
    y = tempY;
    w = tempW;
    h = tempH;
    state = false;
  }
  
  void display() {
    stroke(0);
    rect(x, y, w, h);
  }
}
