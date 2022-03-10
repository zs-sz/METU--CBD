int limit;
float oneLimit;

void setup() {
  size(600,600);
  calculateBasics();
}

void draw() {
  background(255);
  calculateBasics();
  
  // i = counter
  // 10
  // 
  for(int i = 0; i < limit; i= i + 1) {
      float x = i * oneLimit;
     // x = 60;
      float grey = map(i, 0, limit,0,360);
     
      fill(grey);
      rect(
       x,0,oneLimit, height
     );
  }
  
  //
}

void calculateBasics() {
  limit = 5;
  oneLimit = width / limit;
}
