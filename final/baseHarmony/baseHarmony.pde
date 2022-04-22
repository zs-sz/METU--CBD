import com.cage.colorharmony.*;

COTY data = new COTY();
PFont typeFace;


// CREATE A COLORHARMONY INSTANCE (DEFAULT CONSTRUCTOR)
ColorHarmony colorHarmony = new ColorHarmony(this);

// THE HARMONIZED PALETTE
color[] colors = new color[5];
  
  
void setup() {
  data.init();
  size(1000,700); 
  noStroke();
  rectMode(CENTER);
  textAlign(CENTER);
  colors = colorHarmony.Analogous(data.hex);
  typeFace = createFont("Helvetica", 48);
  textFont(typeFace);
}

void draw() {
  background(255);
  randomSeed(200);
  for(int i = 0; i<1000;i++) {
    fill(randomHarmony());
    ellipse(random(width), random(height), 50,50);
  };
  
  fill(data.hex);
  translate(width / 2, height / 2);
  rect(0, 0, width / 2, height / 2);
  fill(255);
  text(data.name, 0, 12);
  
}

void keyReleased() {
  data.next();
}

color randomHarmony() {
  colors = colorHarmony.Analogous(data.hex);
  int index = int(random(0, colors.length - 1));
  return colors[index];
}
