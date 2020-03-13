int positionX = 200;
// make a variable for the position of the ellipse

void setup() {
  size(600, 600);
  background(0);
  fill(255, 0, 0);
  noStroke();
}

void draw() {
  background(0); // redraw background each time so ellipse 'moves'
  ellipse(positionX, height/2, 20, 20); // draw an ellipse with an x position of our positionX variable
  
}

void keyPressed() {
 if (key == 'a' || key == 'A') { // if the key a or A is pressed 
   println('a'); // print 'a' to the console
   positionX -= 10; // decrease the value of positionX by 10 (move it to the left)
 }
 if (key == 'd' || key == 'D') { // if the key b or B is pressed
   println('d'); // print 'd' to the console
   positionX += 10; // increase the value of positionX by 10 (move it to the right)
 }
}
