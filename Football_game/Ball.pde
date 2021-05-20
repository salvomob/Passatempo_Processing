class Ball{
  float posx,posy,d,vx,vy;
  color c;
  
  Ball(){
    posx = random(d/2,width-d/2);
    posy = random(d/2,height-d/2);
    d = width/20;
    vx = 5;
    vy = 10;
    c = color(random(255), random(255), random(255));
  }
  
  void show(){
    noStroke();
    fill(c);
    ellipseMode(CENTER);
    ellipse(posx,posy,d,d);
  }
  
  void move(){
    posx+=vx;
    posy+=vy;
    if(posx <= d/2 || posx >=width-d/2) vx = vx*(-1);
    if(posy <= d/2 || posy >=height-d/2) vy = vy*(-1);
  }
  
  void hit(Player p){
    float d1;
    d1 = dist(posx,posy,p.posx,p.posy-p.h/2);
    if(d1 < d)
    {
      //vx = vx*(-1);
      vy = vy*(-1);
      p.punteggio++;
    }
  }
  
  void hit2(NewPlayer np){
    float d1;
    d1 = dist(posx,posy,np.posx,np.posy+np.h/2);
    if(d1 < d)
    {
      //vx = vx*(-1);
      vy = vy*(-1);
      np.punteggio++;
    }
  }
  
}
