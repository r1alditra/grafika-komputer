float angle = 0;
float radius = 100;

void setup() {
  size(400, 400);
}

void draw() {
  background(220);
  
  // Kotak
  translate(width/2, height/2);
  rotate(radians(frameCount));
  rectMode(CENTER);
  rect(0, 0, 100, 100);
  
  // Lingkaran
  float circleX = width/5 + cos(angle) * radius;
  float circleY = height/4 + sin(angle) * radius;
  ellipse(circleX, circleY, 100, 100);
  
  // Segitiga
  float triangleX = width/5 + cos(angle + PI/2) * radius;
  float triangleY = height/4 + sin(angle + PI/2) * radius;
  triangle(triangleX, triangleY, triangleX+30, triangleY-30, triangleX+30, triangleY+30);
  
  angle += 0.05;
}
