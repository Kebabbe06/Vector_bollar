ArrayList<Planet> planets;

float density = 100;
float G = 0.00045;


PVector gravVector;

void setup() {
  size(1000, 800);

  planets = new ArrayList<Planet>();
}

void draw() {
  background(255);

  for (Planet currentPlanet : planets) {

    for (Planet otherPlanet : planets) {
      if (!currentPlanet.equals(otherPlanet)) {
        float d = currentPlanet.pos.dist(otherPlanet.pos);
        float grav = G * currentPlanet.mass * otherPlanet.mass/sq(d);

        currentPlanet.applyForce(gravVector);
      }

      currentPlanet.run();
    }
  }
}

void mouseClicked() {
  println("click");
  println(planets.size());
  planets.add(new Planet(new PVector(mouseX, mouseY), new PVector(random(-10, 10), random(-10, 10)), random(10, 200), color(random(0, 255), random(0, 255), random(0, 255))));
}
