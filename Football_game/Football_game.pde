Campo c;
Player p;
NewPlayer np;
Ball b;
void setup(){
size(500,1000);
c = new Campo();
p =new Player();
np = new NewPlayer();
b = new Ball();
}

void draw(){
  c.show();
  p.move();
  p.disegna();
  np.move();
  np.disegna();
  b.show();
  b.move();
  b.hit(p);
  b.hit2(np);
  println("P: "+p.punteggio+ " NP:"+np.punteggio+"\n");
} 

void keyPressed(){
  if(key == 'r' || key == 'R') setup();
}
