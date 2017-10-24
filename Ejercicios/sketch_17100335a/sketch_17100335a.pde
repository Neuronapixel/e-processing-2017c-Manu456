PImage myImage,X,Y, img1, img2;
void setup(){
  size(300, 300);
  img1 = loadImage("arlberg-pass-833326_960_720");
  img2 = loadImage("zenith");
  img1.filter(THRESHOLD, 0.3);
  img2.filter(THRESHOLD, 0.7);

}
void draw(){
  
  float o = map(mouseX,0,width,3,255);
  println(o);
  myImage.filter(THRESHOLD, 0);
 image(img1,0,0);
 
}