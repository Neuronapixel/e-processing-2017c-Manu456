// variables globales
Circulo circulo1;
Circulo circulo2;
Circulo circulo3;
Circulo circulo4;

void setup(){
 size(400,400);
 circulo = new Circulo( 0,0,50,50);
 circulo = new Circulo(0,width,50,50);
 circulo = new Circulo(0,height,50,50);
 circulo = new Circulo(width,height,50,50);
}
void draw(){
  /********************************************************** 
  e = e(i-1 ) + vt
  circulo.x += circulo.speed; // no multiplico por tiempo  porque 
  el tiempo esta dado por el draw
***********************************************************/
 circulo1.acc++;
 circulo1.x += (circulo.speed + circulo1.acc);
 circulo1.y += (circulo.speed + circulo1.acc);
 
 circulo2.acc++;
 circulo2.x += (circulo.speed + circulo2.acc);*-1;
 circulo2.y += (circulo.speed + circulo2.acc);
 
 circulo3.acc++;
 circulo3.x += (circulo.speed + circulo3.acc);
 circulo3.y += (circulo.speed + circulo3.acc);*-1;
  
 circulo4.acc++;
 circulo4.x += (circulo.speed + circulo4.acc);*-1;
 circulo4.y += (circulo.speed + circulo4.acc);*-1;
  
  circulo.dibujar();
  circulo.dibujar();
  circulo.dibujar();
  circulo.dibujar();
}