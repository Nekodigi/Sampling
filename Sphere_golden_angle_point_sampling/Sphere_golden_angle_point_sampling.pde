//based on this site http://blog.marmakoide.org/?p=1S

int n = 256;
final float golden_angle = PI * (3 - sqrt(5));
float scale = 250;

void setup(){
  size(500, 500, P3D);
  colorMode(HSB, 360, 100, 100);
  strokeWeight(10);
  ortho();
}

void draw(){
  float theta = 0;
  background(360);//very funny without background!!
  translate(width/2, height/2);
  rotateX(float(frameCount)/500);
  rotateY(float(frameCount)/1000);
  rotateZ(float(frameCount)/2000);
  for(int i=0; i<=n; i++){
    float z = map(i, 0, n, -1, 1);
    float radius = sqrt(1 - z * z);
    float x = radius * cos(theta);
    float y = radius * sin(theta);
    theta += golden_angle;
    stroke(map(i, 0, n, 0, 360), 100, 100);
    point(x*scale, y*scale, z*scale);
  }
}
