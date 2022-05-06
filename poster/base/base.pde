COTY data = new COTY();
PFont typeFace;
  
void setup() {
  data.init();
  size(1000,700); 
  noStroke();
  rectMode(CENTER);
  textAlign(CENTER);
  
  typeFace = createFont("Helvetica", 48);
  textFont(typeFace);
}

void draw() {
  background(255);
  fill(data.hex);
  translate(width / 2, height / 2);
  rect(0, 0, width / 2, height / 2);
  fill(255);
  text(data.name, 0, 12);
  
  
  
}

void keyReleased() {
  data.next();
}
