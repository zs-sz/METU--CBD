// https://processing.org/reference/#environment

void setup() {
  size(600,600);
}

void draw() {
  background(255);
  fill(51);
  textSize(32);
  
  text("tick: " + frameRate, 100, 100);
  text("mouseX: " + mouseX, 100, 150);
  text("mouseY: " + mouseY, 100, 200);
  text("last key pressed: " + key, 100, 250);
  text("last key code: " + keyCode, 100, 300);
}
