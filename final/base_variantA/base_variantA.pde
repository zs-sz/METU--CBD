COTY data = new COTY();
PFont typeFace;
int seed = 200;  
void setup() {
  data.init();
  size(1000,700); 
  //noStroke();
  rectMode(CENTER);
  textAlign(CENTER);
  
  typeFace = createFont("FoundersGrotesk-Bold", 48);
  textFont(typeFace);
  noStroke();
  background(data.hex);
  smooth(16);
  //noSmooth();
}

void draw() {
  //background(data.hex);

  fill(data.hex, 4);
 rect(width/2,height/2,width,height);
  stroke(255,80);
  strokeWeight(1);
  fill(data.hex);
  randomSeed(seed);
  for(int i = 0; i <= 1000;i=i+10) {
    float x = i;
    float t = (frameCount + i) * 0.0033;
    float n = noise(t,t+4);
    float y =  n * height ;
    float s = 28;
    push();
    translate(x,y);
    rotate((frameCount+(i*0.05))*0.008);
    rect(0,0,s*n*5,9);
    pop();
  }
 // text(data.name, 0, 12);
}

void keyReleased() {
  seed = int(random(0,99999));
  data.next();
  background(data.hex);
}
