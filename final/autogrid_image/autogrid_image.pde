// q racs cella merete
// q is the size of the grid
int q = 100;
// tha half of the basic size
int halfQ = q  / 2;
int rowCount;
int seed = 1;
int qMouseX=q;
int qMouseY = q;
int currentHead = 0;
PVector qMouse; 
ArrayList<PImage> images;
PImage currentImage;

// REPLACE THE COLOR CODES WITH YOURS
// IRD FELUL A SZINEKET A SAJATODDAL
// color[] palette_a = {#fff587, #ff8c64, #ff665a, #7d6b7d, #a3a1a8};
color[] palette_a = {#cccccc, #f2f2f2, #a6a6a6, #515151, #dedede};

void setup() {
  size(900,900);  
  // HOW MANY ROWS?
  // HANY SOR? 
  rowCount = 1+round( width / q);
  noStroke();
  background(rc());
  noFill();
  smooth(16);
  images = new ArrayList<PImage>();

  // REPLACE THE FILENAMES BELOW OR DUPLICATE THE LINES AS MANY TIMES YOU NEEDED (ONE LINE/IMAGE)
  // Csereld ki a fileneveket a kovetkezo sorokban a tiedre, ha nem eleg akkor duplikald a sort annnyiszor ahany keped van
  

  // images.add(loadImage("item1.png"));
  // images.add(loadImage("item2.png"));
  // images.add(loadImage("item3.png"));
  // images.add(loadImage("item4.png"));

  // images.add(loadImage("kit2A.png"));
  // images.add(loadImage("kit2B.png"));
  // images.add(loadImage("kit2C.png"));

  images.add(loadImage("tri1.png"));
  images.add(loadImage("tri2.png"));
  images.add(loadImage("tri3.png"));

  currentImage = ri();
}


void draw() {
   randomSeed(seed);

   translate(-q,-q);

   qMouseX = (int)map(mouseX,0,width,1, rowCount) * q;
   qMouseY = (int)map(mouseY,0,height,1, rowCount) * q;

   pushMatrix();
   translate(qMouseX,qMouseY);
   // blendMode(MULTIPLY);
   if(mousePressed) {
    int mult = (int)random(1,4);
    rotate(HALF_PI * mult);
    float s = q * mult;
    float halfQ = s / 2;
    tint(rc());
    image(currentImage,-halfQ,-halfQ, s, s);
   };
   popMatrix();
}

void keyReleased() {
  // SAVE IMAGE
  // Kép mentése 
  if(key == 's') {
     saveFrame("#####_cbd.png");
  }

  // RESET RANDOM SET
  // új RANDOM SZETT
  if(key == 'r') {
     seed = (int)random(99999);
     currentImage = ni();
     println(currentHead);
    currentHead = (currentHead + 1) % images.size();
  }

  // CLEAR BACKGROUND
  // TORLES
  if(key == 'c') {
     seed = (int)random(99999);
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

PImage ni(){
  return images.get(currentHead);
}
