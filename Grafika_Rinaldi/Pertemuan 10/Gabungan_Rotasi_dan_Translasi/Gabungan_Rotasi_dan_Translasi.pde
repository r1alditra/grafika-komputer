float angle = 0;

void setup() {
  size(500, 500);
}

void draw(){
  rotate(angle);
  translate(mouseX, mouseY);
  rect(-25, -25, 50, 50);
  angle += 0.1;
  
}
