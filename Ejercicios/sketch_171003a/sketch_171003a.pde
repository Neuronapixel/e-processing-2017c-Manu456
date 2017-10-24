PImage myImage;
void setup(){
  size(280,290);
  myImage = loadImage("arlberg-pass-833326_960_720");
  myImage.loadPixels();
  println(myImage.pixels);
}
void draw(){
  
  float o = map(mouseX,0,width,3,255);
  println(o);
  myImge.filter(THRESHOLD, 0);
 image(myImage,0,0);
 
}