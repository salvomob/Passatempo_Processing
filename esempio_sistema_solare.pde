import peasy.*;

PeasyCam cam;
Sun sole;
Planet terra,marte;

void setup(){
  size(1600,900,P3D);
  sole = new Sun(50,0);
  terra = new Planet(20,0,150,1);
  marte = new Planet(30,0.01,150,2);
  cam = new PeasyCam(this,0,0,0,1000);
}

void draw(){
 
  lights();
  background(255);
 // translate(width/2,height/2);
  scale(1.5);
  pushMatrix();
  sole.show();
  terra.show();
  terra.showMoons();
  translate(terra.distanza,0);
  marte.show();
  marte.showMoons();
  popMatrix();

}
