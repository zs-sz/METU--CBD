void setup() {
  // fullScreen(P2D);
  size(900,900, P2D);
  frameRate(60);
  //smooth(16);
  noSmooth();
  background(255);
  rectMode(CENTER);
  strokeWeight(2);
}
int offset = 400;

void draw() {
  
  pushMatrix();
  translate(width/2,height/2);
  stroke(0,255);
  float res = -0.006;
  for(int i = 200;i >0;i--) {
    float n = noise(offset+frameCount*0.001+(i*res),offset+offset+frameCount*0.001+(i*res));
    rotate(offset+(n*0.001) * 1);
    float s = 62 + cos((n* i) * 0.08) * 44;
    rect(((n*1.2)) * width/2,0,s/1,s/4);
    translate(0,7); 
  }
  popMatrix();

}

void keyReleased() {
  rect(width/2,height/2,width,height);
  offset=(int)random(100,4000);
  
  if(key == 's') {
    saveFrame("##########.png");
  }
}
