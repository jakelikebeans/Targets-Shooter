class Sparkles {
  int x, y, diam, speed;
  color c;

  Sparkles(int x, int y) {
    this.x=x;
    this.y=y;
    diam = int(random(1, 5));
    speed = int(random(3, 6));
    c = color(random(255), random(255), random(255));
  }
  void display() {
    fill(c);
    circle(x, y, diam);
  }
  void move() {
    y+= speed;
  }

  Boolean reachedBottom() {
    if (y>height + 100) {
      return true;
    } else {
      return false;
    }
  }
}
