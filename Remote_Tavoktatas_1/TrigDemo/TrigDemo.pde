//radius
float r;
float speed = 0.001;
void setup() {
  smooth(16);
  size(900, 900);
  background(51);
  strokeWeight(2);
  stroke(100);
  fill(255);
  textSize(32);
  r = width / 4;
}

void draw () {
  background(51);
  // move to middle
  translate(width / 2, height /2);
  float s = frameCount * 0.01;
  float x = cos(s) * r;
  float y = sin(s) * r;
  
  
  noFill();
  stroke(70);
  ellipse(0,0,r*2,r*2);
  drawTriangle(x, y);
  stroke(120);
  fill(255);
  ellipse(x,y, 30, 30);
  
}


void drawTriangle(float x, float y) {
  stroke(40);
  line(0,0,x,y);
  stroke(100);
  text("X: "+round(x), x, -10);
  line(0,0,x,0);
  text("Y: "+round(y), x+50, y+10);
  line(x,y,x,0);
  //line()
}
