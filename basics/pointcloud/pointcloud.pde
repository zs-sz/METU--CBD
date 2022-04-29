

void setup() {
 size(600,600);
 background(255);
}

void draw() {
  fill(255);
  PVector pos = getPointInDisk(100,200);
  translate(width/2, height/2);
  ellipse(pos.x,pos.y, 10, 10);
}



PVector getPointInDisk(float min, float max) {
  float rad = random(min, max);
  float ang = random(PI, TWO_PI);
  float x = rad * cos(ang);
  float y = rad * sin(ang);
  return new PVector(x, y);
}
