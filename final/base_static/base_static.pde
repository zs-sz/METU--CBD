import com.cage.colorharmony.*;


ColorHarmony colorHarmony = new ColorHarmony(this);
COTY data = new COTY();
PFont typeFace;
color[] colors = new color[5];  
int seed = 200;

void setup() {
  data.init();
  size(1000,700); 
 
  rectMode(CENTER);
  textAlign(CENTER);
  typeFace = createFont("FoundersGrotesk-Bold", 48);
  colors = colorHarmony.Complementary(data.hex);
  textFont(typeFace);
}

void draw() {
  randomSeed(seed);
  background(255);
  stroke(0,50);
  int q = round(map(mouseX, 0, width, 2,width*0.1));
  push();
  translate(-q,-q);
  for(int i = 0; i<1000;i++) {
   
    color c = colors[(int)random(5)];
    fill(255);
    float s = random(5,20);
    if(random(1) < 0.017) {
      fill(c);
       s = random(50,120);
    }
 

    ellipse(quantizeNumber(random(width),q), quantizeNumber(random(height),q), s,s);
  };
  pop();
  push();

  translate(width / 2, height / 2);
  fill(255); 
  rect(0, 0, width / 2, height / 2);
  fill(data.hex);
  text(data.name, 0, 12);
  pop();
 

}

void keyReleased() {
  seed = int(random(1, 10000));
  data.next();
  colors = colorHarmony.Analogous(data.hex);
  println(hue(data.hex));
}

  float quantizeNumber(float val, float quantum) {
    float remainder = val % quantum;
    float sign = val >= 0 ? 1 : -1;
    return val - remainder + sign * quantum;
  }
