
void setup () {
size(900,900);
rectMode(CENTER);
} 

void draw() {
 // background(200);
   fill(0);
   float x = map(mouseX, 0, width, 0, 1); 
   float y = map(mouseY, 0, height, 0, 1); 
  
   float dx = mouseX-pmouseX;
   float dy = mouseY-pmouseY;
   textSize(32);
   float normalizedSpeed = map(dx,0, width, 3, 150);
   normalizedSpeed = abs(normalizedSpeed);
 
  strokeWeight(normalizedSpeed);
    
  if (mousePressed == true) {
    line(mouseX, mouseY, pmouseX, pmouseY);
  } 
}
