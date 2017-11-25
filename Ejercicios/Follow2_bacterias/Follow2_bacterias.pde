
float[] x = new float[100];
float[] y = new float[350];
float segLength = 100;

void setup() {
  size(640, 800);
  strokeWeight(20.0);
  stroke(255, 188);
}

void draw() {
  background(1);
  dragSegment(0, mouseX, mouseY);
    dragSegment(0, mouseY, mouseX);
  dragSegment(1, x[0], y[0]);
  dragSegment(1, y[0], x[0]);
}

void dragSegment(int i, float xin, float yin) {
  float dx = xin - x[i];
  float dy = yin - y[i];
  float angle = atan2(dy, dx);  
  x[i] = xin - cos(angle) * segLength;
  y[i] = yin - sin(angle) * segLength;
  segment(x[i], y[i], angle);
}

void segment(float x, float y, float a) {
  pushMatrix();
  translate(x, y);
  rotate(a);
  line(10, 55, segLength, 0);
  line(1, 55, segLength, 0);
  popMatrix();
}