int limit = 10;
float oneLimit = 0;

void setup() {
  size(600,600);
  calculateBasics();
}

void draw() {
  background(255);
  calculateBasics();
  for(int i = 0;i < limit;i++) {
      float x = i * oneLimit;
      rect(
       x,0,
       oneLimit, height
     );
  }
}

void calculateBasics() {
  limit = 50;
  oneLimit = width / limit;
}
