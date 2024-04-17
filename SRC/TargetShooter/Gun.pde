class Gun {
  int x, y, w;
  PImage ship;

  Gun (int x, int y) {
    this.x = x;
    this.y = y;
    w = 75;
    ship= loadImage("Gunn.png");
  }
  void display () {
    
    imageMode(CENTER);
    ship.resize(w, w);
    image(ship, x, y);
  }

  void move (int x, int y) {
    this.x=x;
    this.y=y;
  }





  boolean intersect( Gun r) {
    float d = dist(x, y, r.x, r.y);
    if (d<55) {
      return true;
    } else {
      return false;
    }
  }
}
