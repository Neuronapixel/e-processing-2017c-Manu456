class Particle{
  float x,y,size,speedX,speedY,acc;
  boolean alive;
  Particle(){
    x = width/2;
    y = height/2;
    size = 20;
    speedX = 5;
    speedY = 5;
    acc = 0 ;
    alive =true;
  }
  Particle(float nx,float ny){
  x = nx;
    y = ny;
    size = 20;
    speedX = 5;
    speedY = 5;
    acc = 0 ;
    alive=true;
  }
  
  void run(){
    move();
    lifeSpan();
    // mostrarse o dibujarse
    paint();
}
void paint(){
  fill(random(0,255),random(0,255),random(0,255));
  ellipse(x,y,size,size);
 }
 void move(){
     y+=speedX;
     x+=speedY;
 }
 void lifeSpan(){
   if(this.y > height)
  alive=false;
  }
 }