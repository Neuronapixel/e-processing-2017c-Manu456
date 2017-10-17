class Particle{
  Vec3D speed,acc,position;
  float size;
  Particle (){
    position = new Vec3D(width/2, height/2,0);
    speed = new Vec3D(random(-2,2), random (-2, 2), 0);
    acc = new Vec3D(random(-2,2), random (-2, 2), 0);
    size = 10;
  }
    void run(){
    show();
    move();
    Bounce();
    }
    void show(){
      stroke(255);
      ellipse(position.x,position.y,size,size);
    
      void bounce(){
        if ((position.x > width)||(position.x < 0)){
          speed.x = speed.x*-1;
        }
         void bounce(){
        if ((position.x > height)||(position.y <0)){
          speed.x = speed.x*-1;
  }

}
void move() {
  speed.addSelf(acc);
  speed.limit(2);
  position.addSelf(speed);
  acc.Clear();
    }
    void flock(){
    //separacio
    separate(40);
    //cohesion
    cohesion(0.0025):
    //alineacion
    align(1);
    
    }
void cohesion(float magnitude){
  Vect3D sum = new vec3D();
  int count = 0;
  for( int i =0; i < pSystem.size(); i++){
  Particle thisParticle = pSystem.get(i);
  float distance = position.distanceTo(thisParticle.position);
  if(distance > 0 && distance < 60){
    Vec3D diff = position.sub(thisParticle.position);
    diff.normalizeTo(1.0/distance);
    sum.addSelf(diff);
    count++;
   }
  }
  if(count > 0){
    sum.scaleSelf(1.0/count);
  }
  Vec3D steer = sum.sub(position);
  steer.scaleSelf(magnitude);
  acc.addSelf(steer);
 }
      void lineBetween(){
  for( int i =0; i < pSystem.size(); i++){
  Particle thisParticle = pSystem.get(i);
  float distance = position.distanceTo(thisParticle.position);
  if(distance > 0 && distance < 60){
    line(position.x, position.y);
   
  }
  }
      }
      }
      