ArrayList<Ball> balls;


PVector gravity, wind;

void setup() {
  size(1000, 800);

  balls = new ArrayList<Ball>();


  gravity = new PVector(0, 0);
  wind = new PVector(0, 0);
}

void draw() {
  background(255);

  for (Ball currentBall : balls) {
    currentBall.applyForce(gravity);
    currentBall.applyForce(wind);
    currentBall.run();
  }
}

void mouseClicked() {
  println("click");
  println(balls.size());
  balls.add(new Ball(new PVector(mouseX, mouseY), new PVector(random(-10, 10), random(-10, 10)), random(10, 100), random(10, 100), color(random(0, 255), random(0, 255), random(0, 255))));
}

void keyPressed() {
  if (key == 'w') {
    wind.y = wind.y - 20;
  } else if (key == 'a') {
    wind.x = wind.x - 20;
  } else if (key == 's') {
    wind.y = wind.y + 20;
  } else if (key == 'd') {
    wind.x = wind.x + 20;
  }
}
