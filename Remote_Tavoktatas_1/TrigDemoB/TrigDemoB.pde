// radius
float r = 200; 

// szog
float angle = -90;


void setup() {
  smooth(16);
  size(900, 900);
  frameRate(1);
}

void draw () {
 r = 200;
 angle = -86;
 background(51);
 translate(482,918);
 stroke(255);
 line(0,0,1000, 0);
 
 float rad = radians(angle);
 
 //
 float x = cos(rad) * r;
 float y = sin(rad) * r;
 //
 line(0,0,x,y);
 ellipse(x,y, 20,20);
 textSize(72);
   
   
}
