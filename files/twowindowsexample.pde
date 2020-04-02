// sketch that demonstrates how to have two windows at once
// ..the windows will start on top of one another,
// ..so you need to move one to the side to see both of them

float ballX;
float ballY;


// the 'setup' for the first window
public void settings() { 
  size(300, 300);
  
  // this connects our first window with our second window
  // .. don't touch this unless you know what you're doing
  String[] args = {"SecondApplet"};
  SecondApplet sa = new SecondApplet();
  PApplet.runSketch(args, sa);
}
// the draw for the first window
void draw() {
 ballX = mouseX;
 ballY = mouseY;
 background(0);
 ellipse(ballX, ballY, 10, 10);
}

// make a second window called SecondApplet which is an extension of our first window
// make changes within the settings function that you would normally make in setup()
// make changes within the draw function that you would normally make within draw()
public class SecondApplet extends PApplet {
  
  // the 'setup' for our second window
  public void settings() {
    size(300, 300);
  }
  
  // the draw for our second window
  public void draw() {
    background(255, 0, 0);
    // we can access ballY and ballX because they are declared at the top of the sketch with global scope
    ellipse(ballX, ballY, 20, 20);
  }
}
