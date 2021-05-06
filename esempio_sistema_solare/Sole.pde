public class Sun {
  float raggio;
  float rotazione;
  
  Sun(float r,float a){
    raggio = r;
    rotazione = a;
  }
  
  void show(){
    rotazione += 0.01;
    fill(255,255,0);
    rotateY(rotazione);
    sphere(raggio);
  }
}
