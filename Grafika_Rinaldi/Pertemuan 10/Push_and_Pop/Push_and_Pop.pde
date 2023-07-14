void setup(){
  size (500, 500);
}

void draw(){
  pushMatrix();
   translate(mouseX, mouseY);
  rect(0, 0, 60, 60);
  
  popMatrix();
  translate(35, 10);
  rect(0, 0, 30, 30);
}
