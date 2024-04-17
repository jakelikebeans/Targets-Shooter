class Target {

  int x, y, diam, speed;
  PImage Target;

  Target(int x, int y) {
    this.x=x;
    this.y =y;
    diam = int(random(80, 100));
    speed= int(random(2, 6));
    Target = loadImage("The Targets.png");
  }

  void display() {
    imageMode(CENTER);
    Target.resize(diam, diam);
    image(Target, x, y);
  }

  void move () {

    y+=speed;
  }

  Boolean reachedBottom() {
    if (y>height + 100) {
      return true;
    } else {
      return false;
    }
  }
}
