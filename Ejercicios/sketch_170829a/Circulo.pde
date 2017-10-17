class Circulo{
  // atributos - como es?
  float x,y,w,h;
  float speed,acc;
  //inicializador - como genero este objeto?
  Circulo(){
    x = 0;
    y = height/2;
    w = 50;
    h = w;
    speed = 10;
    acc = 1;
  }
  circulo (float nx, float ny, float nw, float nh) {
    x = 0;
    y = height/2;
    w = 50;
    h = w;
  //metodos
  void dibujar(){
    ellipse(x,y,w,h);
   
  }
  
}