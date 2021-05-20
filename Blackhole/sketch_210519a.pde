BlackHole b;
Asteroid a []=new Asteroid[10];
float hY;

void setup() {
  size(512, 512);
  //frameRate(1);
  b=new BlackHole(100, 100);
  for (int i=0; i<a.length; i++) a[i]=new Asteroid();
}

void draw() {
  background(120);
  b.move();

  for (int i=0; i<a.length; i++) {
    a[i].move(b);

    a[i].update();

    a[i].disegna();
    if(b.hit(a[i])){
      b.incrementa();
      a[i].x = random(0,width);
      a[i].y = random(0,height);
    }
  }
}

void keyPressed() {
  if ((key=='R') || (key=='r'))
    setup();
}
