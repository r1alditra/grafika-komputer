void setup(){
  size (500, 500);
}

void draw(){
  translate(mouseX, mouseY);
  scale(mouseX / 60.0);
  rect(-30, -30, 60, 60);
}
