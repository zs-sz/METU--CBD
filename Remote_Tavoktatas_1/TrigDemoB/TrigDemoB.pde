// radius
float r = 200; 
// szog
float angle = 30;


void setup() {
  smooth(16);
  size(900, 900);
   frameRate(30);
}

void draw () {
  background(51);
  textSize(72);
  translate(450,450);
  ellipse(0,0,10,10);
  float elforgatas = frameCount * 0.1;
  
  float x = cos(elforgatas) * r;
  float y = sin(elforgatas) * r;
  
  ellipse(x, y, 40,40);
}
