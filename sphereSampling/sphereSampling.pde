float scale = 500;
ArrayList<PVector> ps = new ArrayList<PVector>();

void setup(){
  fullScreen(P3D);
  strokeWeight(20);
}

void draw(){
  background(255);
  translate(width/2, height/2);
  rotateX(float(frameCount)/100);
  rotateY(float(frameCount)/100);
  rotateZ(float(frameCount)/100);
  noStroke();
  sphere(500);
  stroke(0);
  ps.add(sphereSampling().mult(scale));
  for(PVector p : ps){
    point(p.x, p.y, p.z);
  }
}

PVector sphereSampling(){//https://mathworld.wolfram.com/SpherePointPicking.html
  float u = random(-1, 1);
  float theta = random(TWO_PI);
  float x = sqrt(1-u*u)*cos(theta);
  float y = sqrt(1-u*u)*sin(theta);
  return new PVector(x, y, u);
}