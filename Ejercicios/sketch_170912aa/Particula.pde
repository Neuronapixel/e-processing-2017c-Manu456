class Particle{
  PVector position,speed,acc;
  float size,limit,topSpeed;
color miColor;

  Particle(){
    position = new PVector(width/2,height/2,0);
    speed = new PVector(random(-2,2), random(0,2), 0);
    
    acc = new PVector(-0.001 , 0.01 , 0);
    size = 10;
    topSpeed = 10;
    miColor = color(225,225,225);
  }
  void run(){
    paint(); //dibujar
    mover();
    checkEdges();
    gravity();
    distance();
    //interes
}
void paint(){
  fill(miColor);
ellipse(position.x,position.y,size,size);
}
/*void checkEdges() {

    if (position.x > width) {
      position.x = 0;
    } else if (location.x < 0) {
      position.x = width;
    }
    
    if (position.y > height) {
      position.y = 0;
    } else if (location.y < 0) {
      position.y = height;
    }*/
void checkEdges(){
  if ((position.x > width) || (position.x < 0)) {
    speed.x = speed.x *-1;
  }
  if ((position.y > height) || (position.y < 0)) {
    speed.y = speed.y * -1;
  }

}
void mover(){
  PVector mouseP = new PVector(mouseX,mouseY,0);
  
  PVector dir = PVector.sub(mouseP,position);
  
 dir.normalize();
 dir.mult(0.8);
 acc = dir;
 
 position.add(acc);
 speed.limit(topSpeed);
 position.add(speed);
 }
 void gravity(){
   PVector gravedad = new PVector (0,0.2,0);
   speed.add(gravedad);
 }
 void distance(){
   PVector distancia = new PVector(MouseX,MouseY);
     PVector distancia = PVector.dist(mouseP,position);
     println (distancia);
     size = map(distancia,0, width,5,20);
 }
}