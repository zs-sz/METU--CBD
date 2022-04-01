void setup(){
  size(800,800);
 //rectMode(CENTER);
};

void draw() {
  //background(204);
 translate(width/2, height/2);
 
 PVector v1 = new PVector(width/2, height/2);
 PVector v2 = new PVector(mouseX, mouseY); 
 PVector v3 = PVector.sub(v1,v2);
 float a = v3.heading();
 rotate(a);

 if(mousePressed) {
   stroke(0,50); 
   float w = -(quantizeNumber(v3.mag(), 25));
   colorMode(HSB);
   float h = map(w, 0, v3.mag(),0,255);
   fill(255+w/2);
   triangle(0,20,w,0,0, -20);
   rect(w-25,-25,50,50);
   
 };
 
 if(keyPressed) {
   background(204);
 }
}

  float quantizeNumber(float val, float quantum) {
    float remainder = val % quantum;
    float sign = val >= 0 ? 1 : -1;
    return val - remainder + sign * quantum;
  }
