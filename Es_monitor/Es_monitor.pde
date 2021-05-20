Monitor m;
OldMonitor om;

void setup(){
size(512,512);
m = new Monitor();
om = new OldMonitor();
}

void draw(){
  background(0);
  m.disegna();
  m.move();
  om.disegna();
  om.update();
  //om.fermo();
}

void keyPressed(){
if(key == 'r' || key =='R')
  setup();
}
