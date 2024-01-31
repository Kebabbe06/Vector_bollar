class Ball {

  PVector pos;
  PVector vel;
  PVector acc;
  PVector totalForce;

  float mass;
  float size;
  color col;

  Ball(PVector _pos, PVector _vel, float _mass, float _size, color _col) {
    pos = _pos;
    vel = _vel;
    acc = new PVector(0,0);
    
    mass =_mass;
    size = _size;
    col = _col;
  }

  void run() {
    update();
    render();
  }

  void render() {
    background(0);
    ellipse(pos.x, pos.y, 5-0, 50);
  }

  void update() {
    pos.add(vel);
    vel.add(acc);
    acc = totalForce.div(mass);

    acc.mult(0);
    totalForce.mult(0);
    if (pos.x > width-25 || pos.x < 25) {
      vel.x = vel.x * -1;
    }
    if (pos.y > height-25 || pos.y < 25) {
      vel.y = vel.y * -0.95;
    }
  }

  void applyForce(PVector force) {
    totalForce.add(force);
  }
}
