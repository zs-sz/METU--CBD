// HU
// Kornyezeti valtozok 

// EN 
// Environment variables

// alak merete / shape size
float r = 50;
// background color
// hatter szin
color bg = color(170,168,238);
void setup () {
  size(600,600);
  background(bg);
}

void draw () {
  
  // draw ONLY when mouse is NOT(!) pressed
  // CSAK akkor rajzolunk ha az eger NINCS(!) lenyomva
  if(!mousePressed) {
    // R 0-255 G 0-255 B 0-255 A 255
    stroke(48,61,77,155);
    fill(102,183,167,255);
    ellipse(mouseX, mouseY, r, r);
  }
}

// 
void mouseWheel(MouseEvent event) {
  // e = -1 Scrolling up
  // e = 1 Scrolling down  
  // e = -1 Gorgetes felfele
  // e = 1 Gorgetes lefele
  float e = event.getCount() * -1;

  // Increase/Decrease shape size
  // Noveljuk/Csokkentjuk az alak meretet

  r = r+e;

  // Constrain lets us keep the size between a minimum and a maximum value
  // Constrain segit egy valtozot ket ertek kozoe szoritani 
  // min10 = r = max80
  r = constrain(r, 10, 80);
  //

   println(e);
}

// KEYBOARD / BILLENTYUZET
void keyReleased () {
  // do 'something' when a key is released
  // csinaljunk valamit ha egy billentyu lenyomva van tartva

  if(key == 'c') {
    background(bg);
  }

  if(key == 's') {
    // save the current screen as png

    saveFrame("######.png");
  }
}
