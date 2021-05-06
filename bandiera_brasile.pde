Brasile[] b = new Brasile[50];//50 bandiere, a piacimento cambiare il valore
void setup(){
  size(800,800);
  for(int i = 0; i < b.length; i++){
    b[i] = new Brasile();
  }
}

void draw(){
  background(0);
  for(int i = 0; i < b.length; i++){
    b[i].move();
    b[i].display();
  }
}

class Brasile{
  float posx;
  float posy;
  float w;
  float h;
  float dim;
  float speedx;
  float speedy;
  
  public
  Brasile(){
    posx = width/2;
    posy = height/2;
    w = random(100,150);
    h = w*2/3;
    dim = w/6;
    speedx = random(1,4);
    speedy = random(1,4);
  }
  
  void display(){
    ellipseMode(CENTER);
    rectMode(CENTER);
    stroke(0);
    strokeWeight(4);
    fill(#6EB93C);
    rect(posx,posy,w,h);
    fill(#EDDB35);
    beginShape();
    vertex(posx,posy-h/4);
    vertex(posx+w/4,posy);
    vertex(posx,posy+h/4);
    vertex(posx-w/4,posy);
    endShape(CLOSE);
    
    fill(0,0,255);
    ellipse(posx,posy,dim,dim);
  }
  
  void move(){
    posx+=speedx;
    posy+=speedy;
    if(posx<=w/2 || posx>=width-w/2) speedx=speedx*(-1);
    if(posy<=h/2 || posy>=height-h/2) speedy=speedy*(-1);
  }
}
