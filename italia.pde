int bs = 20;
int w = 99;
int h=54;
int v=20;

void setup() {
  size(1980, 1080);
  background(255);
}

void draw() {
  for (int i=0; i<w; i++) line(i*bs, 0, i*bs, h*bs);
  for (int i=0; i<h; i++) line(0, i*bs, w*bs, i*bs);
  fill(0,255,0);
  rect(0,0, w/3*bs, h*bs);
  fill(255);
  rect(w/3*bs,0,w/3*2*bs,h*bs);
  fill(255,0,0);
  rect(w/3*2*bs,0,w*bs,h*bs);
  fill(0);
  textAlign(CENTER);
  textSize(50);
  text("W L'ITALIA",width/2,height/2);
  fill(255,255,0);
  ellipse(width/2,2*height/3,200,200);
  fill(255);
  ellipse(width/2-50,(2*height/3)-50,30,30);
  ellipse(width/2+50,(2*height/3)-50,30,30);
  fill(0);
  ellipse(width/2-50,(2*height/3)-50,10,10);
  ellipse(width/2+50,(2*height/3)-50,10,10);
  fill(255);
  arc(width/2,2*height/3,100,100,0,PI);
  line(width/2-50,(2*height/3),width/2+50,(2*height/3));
  fill(0);
  textAlign(CENTER);
  textSize(120);
  text("SONO FIERO DI ESSERE ITALIANO",width/2,height/3);
  
}
