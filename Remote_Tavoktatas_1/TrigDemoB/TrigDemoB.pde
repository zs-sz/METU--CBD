//radius
float r = 200; 
float angle = 30;
void setup() {
  smooth(16);
  size(900, 900);
 
}

void draw () {
  background(51);
  angle = 30;
  // move to middle
  translate(450,450);
  
  fill(255);
  ellipse(0, 0, 20, 20);
  // in radians
  float angleRad = radians(angle);
  //
  float x = cos(angleRad) * r;
  float y = sin(angleRad) * r;
  line(0, 0, x, y);
  rect(x, y, 10,10);
}
