#include <Adafruit_CircuitPlayground.h>
#include "Keyboard.h"

bool leftButtonPressed;
bool rightButtonPressed;

void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);
  CircuitPlayground.begin();
  Keyboard.begin();

}


void loop() {
  // put your main code here, to run repeatedly:
  leftButtonPressed = CircuitPlayground.leftButton();
  rightButtonPressed = CircuitPlayground.rightButton();

  if (leftButtonPressed) {
    Serial.print("left button");
    Keyboard.write('a');
  }
  if (rightButtonPressed) {
    Serial.print("right button");
    Keyboard.write('d');
  }
  delay(250);
}
