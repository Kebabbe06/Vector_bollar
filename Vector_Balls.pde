Ball ball1, ball2;

void setup() {
  size(1000, 800);
  
  ball1 = new Ball(new PVector(100, 100), new PVector(2, 3), 20, 50, color(255, 0, 0));
  ball2 = new Ball(new PVector(200, 300), new PVector(-1, -2), 20, 50, color(255, 255,0));
  
}

void draw(){
  
  ball1.run();
  ball2.run();
  
}
