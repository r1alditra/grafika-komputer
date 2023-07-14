void setup(){
  size (500, 500);
}

void draw(){
  translate(mouseX, mouseY);
  float scalar = mouseX / 60.0;
  scale(scalar);
  strokeWeight(1.0 / scalar);
  rect(-30, -30, 60, 60);
}
