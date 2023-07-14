float angle = 0;

void setup() {
  size(500, 500);
}

void draw(){
  translate(mouseX, mouseY);
  rotate(angle);
  rect(-25, -25, 50, 50);
  angle += 0.1;
  
}
