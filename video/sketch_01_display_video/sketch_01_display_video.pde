import processing.video.*;
Capture video;

void setup() {
  size(640, 480);
  // Initialize Capture object via constructor
  // video is 320x240 @30 fps
  video = new Capture(this, 640, 480, 30); // or 320X240
  video.start();
  println("True");
}

void draw() {
  // Check to see if a new frame is available
  if (video.available()) {
    // If so, read it
    video.read();
    println("True");
  } else {
    println("False");
  }
  // Display the video image
  image(video, 0, 0);
}

/*void captureEvent(Capture video) {
  video.read();
}*/
