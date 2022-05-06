PImage redFlower;
PImage whiteFlower;
PImage blueFlower;

PImage img;
void setup() {
  size(800,800);
  redFlower = loadImage("red.png");
  blueFlower = loadImage("blue.png");
  whiteFlower = loadImage("white.png");
  frameRate(200);
  img = redFlower;
}

void draw() {

  push();
    float s = 120 + 20 * sin(frameCount * 0.08);
    float x = mouseX - s/2;
    float y = mouseY - s/2;
    
    translate(x,y);
    if(mousePressed) {
      image(img, 0,0,s,s);
    }
  pop();
}

void keyReleased() {
  if(key == 'c') {
    background(255);
  }
  
  if(key == '1'){
    img = redFlower;
  }
  if(key == '2'){
    img = blueFlower;
  }
  if(key == '3'){
    img = whiteFlower;
  }
}
