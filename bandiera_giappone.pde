Giappone[] g = new Giappone[50];//50 bandiere, a piacimento cambiare il valore
void setup(){
  size(800,800);
  for(int i = 0; i < g.length; i++){
    g[i] = new Giappone();
  }
}

void draw(){
  background(0);
  for(int i = 0; i < g.length; i++){
    g[i].move();
    g[i].display();
  }
}

class Giappone{
  float posx;
  float posy;
  float w;
  float h;
  float dim;
  float speedx;
  float speedy;
  
  public
  Giappone(){
    posx = width/2;
    posy = height/2;
    w = random(100,150);
    h = w*2/3;
    dim = w/4;
    speedx = random(1,4);
    speedy = random(1,4);
  }
  
  void display(){
    ellipseMode(CENTER);
    rectMode(CENTER);
    stroke(0);
    strokeWeight(4);
    fill(255);
    rect(posx,posy,w,h);
    fill(255,0,0);
    ellipse(posx,posy,dim,dim);
  }
  
  void move(){
    posx+=speedx;
    posy+=speedy;
    if(posx<=w/2 || posx>=width-w/2) speedx=speedx*(-1);
    if(posy<=h/2 || posy>=height-h/2) speedy=speedy*(-1);
  }
}
