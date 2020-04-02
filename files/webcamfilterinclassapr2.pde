
import processing.video.*;

Capture cam;
float ellipseWidth;

void setup() {
  size(1280, 960);

  String[] cameras = Capture.list();

  if (cameras.length == 0) {
    println("There are no cameras available for capture.");
    exit();
  } else {
    println("Available cameras:");
    for (int i = 0; i < cameras.length; i++) {
      println(cameras[i]);
    }

    // The camera can be initialized directly using an
    // element from the array returned by list():
    cam = new Capture(this, cameras[0]);
    cam.start();
  }
  fill(0);
  noStroke();
  ellipseWidth = 30;
}

void draw() {
  if (cam.available() == true) {
    cam.read();
  }
  //tint(255, 0, 0);
  image(cam, 0, 0);
  tint(255, 0, 0);
  filter(POSTERIZE, 2);

  for (int i=0; i<width; i += 50){
    for (int j=0; j<height; j += 50) {
     ellipse(i, j, ellipseWidth, ellipseWidth);
    }
  }
  ellipseWidth = ellipseWidth + random(-2, 2);
  // The following does the same, and is faster when just drawing the image
  // without any additional resizing, transformations, or tint.
  //set(0, 0, cam);
}
