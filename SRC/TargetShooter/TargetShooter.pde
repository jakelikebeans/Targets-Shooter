//Paul Schlegel | March 22nd 2024| Target Shooter |
ArrayList<Laser> lasers = new ArrayList<Laser>();
ArrayList<Target> targets = new ArrayList<Target>();
ArrayList<Sparkles> Sparkles = new ArrayList<Sparkles>();
boolean play;
PImage startScreen, display;
int x, y, w, h, speed;
Laser L1;
int rTime;
boolean reachedTop;
String type;
color c;
int r;



void setup() {
  size(1000, 1000);
  fill(10);
  L1 = new Laser(6,10);
}



void draw() {

  if (!play) {
    startScreen();
  } else {
    background(0);
    noCursor();
    L1.display();
    //S1.display();
    if (frameCount % 100 == 99) {
    }
  }



  //This adds and displays Sparkles

  if (play) {

    fill(232, 218, 218);
    text("Everyone has dreams, mine is to crush yours", width/2, 80);
    Sparkles.add(new Sparkles(int(random(width)), -10));
    for (int i =0; i<Sparkles.size(); i++) {
      Sparkles s = Sparkles.get(i);
      if (s.reachedBottom()) {
        Sparkles.remove(s);
      } else {
        s.display();
        s.move();
      }
    }
  }
}



void startScreen() {
  startScreen = loadImage("Rubber-duckies.png");
  startScreen.resize(width, height);
  imageMode(CENTER);
  image(startScreen, width/2, height/2);
  textAlign(CENTER);
  textSize(44);
  text("Welcome to TargetShooter!", width/2, 300);
  text("By Paul Schlegel | March 2024", width/2, 350);
  text("Click your mouse to begin...", width/2, 400);
  textSize(22);
  text("(Click your mouse to fire lasers to hit the targets)", width/2, 425);
  text("(Additionally, the SpaceBar works as well)", width/2, 450);
  if (mousePressed) {
    play=true;
  }
}

void gameOver () {
  background(0);
  fill(255);
  textAlign(CENTER);
  textSize(44);
  text("Game Over!", width/2, 300);
  noLoop();
}

void display() {

 
}
