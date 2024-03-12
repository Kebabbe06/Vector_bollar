class Planet {

  PVector pos;
  PVector vel;
  PVector acc;
  PVector totalForce;
  
  float mass;
  float size;
  color col;

  Planet(PVector _pos, PVector _vel, float _size, color _col) {
    pos = _pos;
  
    vel = _vel;
    mass = density * (TAU*2) * (size/2)*(size/2)*(size/2)/3;
    acc = new PVector(0, 0);
    totalForce = new PVector(0, 0);
    
    size = _size;
    col = _col;
  }

  void run() {
    update();
    render();
  }

  void render() {
    fill(col);
    ellipse(pos.x, pos.y, size, size);
  }

  void update() {

    acc = totalForce;
    acc.div(mass);
    vel.add(acc);
    pos.add(vel);
    acc.mult(0);
    totalForce.mult(0);


    if (pos.x > width-25) {
      vel.x = vel.x * -1;
      pos.x = pos.x - 25;
    }
    if (pos.x < 25) {
      vel.x = vel.x * -1;
      pos.x = pos.x + 25;
    }
    if (pos.y > height-25) {
      vel.y = vel.y * -1;
      pos.y = pos.y - 25;
    }
    if (pos.y < 25) {
      vel.y = vel.y * -1;
      pos.y = pos.y + 25;
    }
  }

  void applyForce(PVector force) {
    totalForce.add(force);
  }
}
