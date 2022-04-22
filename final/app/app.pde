COTY data = new COTY();
PFont typeFace;
float base = 0;
int scaleCount = 3; 
int seed = 200;

import com.cage.colorharmony.*;
ColorHarmony colorHarmony = new ColorHarmony(this);
color[] colors = new color[5];

void setup() {
  data.init();
  size(1000,700); 
  //noStroke();
  rectMode(CENTER);
  textAlign(CENTER);
  base = width / 2;
  typeFace = createFont("FoundersGrotesk-Bold", 48);
  textFont(typeFace);
  colors = colorHarmony.Analogous(data.hex);

}

void draw() {
  randomSeed(seed);
  background(255);

  fill(data.hex);
  
  for (int i = 1; i <= scaleCount; i++) {
     
     renderLayer(i);
     
  }
  
}

void renderLayer(int i) {
  fill(data.hex);
  float s = exp(6-i) - 1;
  float as = exp(i) - 1;
  float px = 0;
  float py = 0;  
  stroke(255);
  float gs = 50;
  for (int j = 1; j <= int(as*8); j++) {
    float x = quantizeNumber(random(width+gs),gs)-gs;
    float y = quantizeNumber(random(height+gs),gs)-gs;
    color c = colors[j % 6];
    stroke(c,10);
    strokeWeight(1);
   
   line(px,y,px,py);
   line(x,py,px,py);
   fill(c);
   ellipse(x,y,s,s);
    px = x;
    py = y;
   
}
   fill(255);
    ellipse(width / 2, height / 2, width / 2,width / 2);
};

void keyReleased() {
  seed = int(random(1, 10000));
  data.next();
  //colors = colorHarmony.Complementary(data.hex);
  colors = colorHarmony.Monochromatic(data.hex);
}

float quantizeNumber(float val, float quantum) {
  float remainder = val % quantum;
  float sign = val >= 0 ? 1 : -1;
  return val - remainder + sign * quantum;
}
