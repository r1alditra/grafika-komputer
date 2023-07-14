void setup() {
  size(500, 500, P3D);
  fill(204);
  strokeWeight(2);
}

void draw() {
  directionalLight(0, 255, 0, 0, -1, 0);
  background(0);
  // Change height of the camera with mouseY
  camera(mouseX*2, mouseY*2, 120.0, // eyeX, eyeY, eyeZ
         0.0, 0.0, 0.0, // centerX, centerY, CenterZ
         0.0, 1.0, 0.0); // upX, upY, upZ
  noStroke();
  sphere(150); // Use sphere() instead of box()
  stroke(255);
  line(-400, 0, 0, 400, 0, 0);
  line(0, -400, 0, 0, 400, 0);
  line(0, 0, -400, 0, 0, 400);
}
