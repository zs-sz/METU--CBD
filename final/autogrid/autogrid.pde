int q = 100;
int cell;
int seed = 1;
int qMouseX=q;
int qMouseY = q;
PVector qMouse; 
//color[] palette_a = {#FF8386, #FD9D91, #F59B90, #F06D65, #ECEEBF, #E37B72, #DADBAF, #D24F54, #D13334, #AF7A52, #AE4736, #A54836, #A45A35, #A32530, #9E3E28};
color[] palette_a = {#333333, #666666, #999999, #272822, #e4e4e4};

void setup() {
  size(900,900);  
  cell = 1+round( width / q);
  stroke(0,5);
  noStroke();
  background(rc());
  noFill();
  smooth(16);
  rectMode(CENTER);
}


void draw() {
   randomSeed(seed);
   stroke(rc(),40);
   translate(-q*0.5,-q*0.5);
   qMouseX = (int)map(mouseX,0,width,1, cell) * q;
   qMouseY = (int)map(mouseY,0,height,1, cell) * q;
   pushMatrix();
   translate(qMouseX,qMouseY);
   if(mousePressed) {
     stars();
   };
   popMatrix();
}

void stars() {
  fill(rc(),120);
  int mult = (int)random(1,5);
  for(int i = 1;i<14;i++) {
    float a = sin(i+frameCount * 0.01) * TWO_PI;
    float r = ((q/4)*mult);
    float x = r * cos(a);
    float y = r * sin(a);
    line(0,0,x,y);
  }
}

void keyReleased() {
  if(key == 's') {
     saveFrame("#####_cbd.png");
  }
  if(key == 'r') {
     seed = (int)random(99999);
  }
  if(key == 'c') {
     background(rc());
     println(seed);
  }
}

color rc(){
  int rnd = (int)random(palette_a.length-1);
  return palette_a[rnd];
}
