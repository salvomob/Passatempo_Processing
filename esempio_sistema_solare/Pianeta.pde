class Planet {
  float raggio;
  float angolo;
  float inc;
  float distanza;
  int moons;

  Planet(float r, float ro, float d, int m ) {
    raggio = r;
    angolo = 0;
    inc = ro;
    distanza = d;
    moons = m;
  }
  void show() {
    angolo += inc;
    fill(255);
    translate(distanza, 0, 0);
    rotateY(angolo);


    sphere(raggio);
  }

  void showMoons() {
    for (int i = 1; i < moons+1; i++) {
      translate((i+2)*15, 0, 0);

      rotateY(angolo);



      fill(255, 0, 0);
      sphere(5);
    }
  }
}
