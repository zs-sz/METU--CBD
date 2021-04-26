int q = 100;
int cell;
int seed = 1;
int qMouseX=q;
int qMouseY = q;
PVector qMouse; 
ArrayList<PImage> images;
PImage currentImage;

// REPLACE THE COLOR CODES WITH YOURS
// IRD FELUL A SZINEKET
color[] palette_a = {#fff587, #ff8c64, #ff665a, #7d6b7d, #a3a1a8};

void setup() {
  size(900,900);  
  cell = 1+round( width / q);
  stroke(0,5);
  noStroke();
  background(rc());
  noFill();
  smooth(16);
  images = new ArrayList<PImage>();

  // REPLACE THE FILENAMES HERE

  // images.add(loadImage("item1.png"));
  // images.add(loadImage("item2.png"));
  // images.add(loadImage("item3.png"));
  // images.add(loadImage("item4.png"));

  images.add(loadImage("kit2A.png"));
  images.add(loadImage("kit2B.png"));
  images.add(loadImage("kit2C.png"));
  currentImage = ri();
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
    int mult = (int)random(1,3);
    image(currentImage,0,0, q*mult, q*mult);
   };
   popMatrix();
}

void keyReleased() {
  // SAVE IMAGE
  // Kép mentése 
  if(key == 's') {
     saveFrame("#####_cbd.png");
  }

  // RESET RANDOM
  // új RANDOM SZETT
  if(key == 'r') {
     seed = (int)random(99999);
     currentImage = ri();
  }

  // CLEAR BACKGROUND
  // TORLES
  if(key == 'c') {
     background(rc());
     println(seed);
  }
}

color rc(){
  int rnd = (int)random(palette_a.length-1);
  return palette_a[rnd];
}

PImage ri(){
  int rnd = (int)random(images.size());
  return images.get(rnd);
}

