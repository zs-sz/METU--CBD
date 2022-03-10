// HU
// Kornyezeti valtozok

// EN 
// Environment variables

void setup () {
  size(600,600);
  background(51);
  textSize(16);
}

void draw () {
  background(51);
  // lines / vonalak
  drawCrosshair();
  // mouse data / eger adatok
  drawInfo();
}


void drawCrosshair() {
  // stroke color , vonal szin
  stroke(100);
  // eger lenyomva? / is the mouse pressed? 
  if (mousePressed) {
    // make it white / legyen inkabb feher
    stroke(255);
  } 
  // horizontal, vertical line - fuggoleges, vizszintes vonalak
  line(mouseX, 0, mouseX, height);
  line(0, mouseY, width, mouseY);
  noFill();
  // circles / korok
  ellipse(mouseX, mouseY, 20, 20);
  ellipse(mouseX, mouseY, 40, 40);
  ellipse(mouseX, mouseY, 60, 60);
}


void drawInfo () {

  // text("blah", X pozicio, Y pozicio)
  // text("blah", X position, Y position)
  fill(255);

  // the add sign means CONCAT this and that when it comes to text
  // Az osszeadas jel osszekotest jelent amikor szovegrol beszelunk 
  text("mouseX: " + mouseX + "px" ,20, 100);
  text("mouseY: " + mouseY + "px" ,20, 120);
  text("Sketch Width: " + width + "px" ,20, 140);
  text("Sketch Width: " + width + "px" ,20, 160);

  if (mousePressed && (mouseButton == LEFT)) {
    text("Left click/Bal Klikk ", 20, 180);
  } 
  if (mousePressed && (mouseButton == RIGHT)) {
    text("Right click/Jobb klikk", 20, 180);
  } 
}
