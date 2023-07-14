void setup() {
  size(500, 500);
}

void draw(){
  translate(mouseX, mouseY);
  rect(0,0,100,100);
  translate(50, 15);
  rect(0,0, 50,50);
}
