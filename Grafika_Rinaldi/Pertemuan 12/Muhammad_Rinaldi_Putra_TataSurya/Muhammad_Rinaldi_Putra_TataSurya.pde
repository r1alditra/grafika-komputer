float sunRadius = 70;
float mercuryRadius = 10;
float venusRadius = 18;
float earthRadius = 20;
float marsRadius = 16;
float jupiterRadius = 45;
float saturnRadius = 40;
float uranusRadius = 30;
float neptuneRadius = 28;

float sunDistance = 0;
float mercuryDistance = 100;
float venusDistance = 150;
float earthDistance = 200;
float marsDistance = 250;
float jupiterDistance = 350;
float saturnDistance = 420;
float uranusDistance = 500;
float neptuneDistance = 580;

float sunAngle = 0;
float mercuryAngle = 0;
float venusAngle = 0;
float earthAngle = 0;
float marsAngle = 0;
float jupiterAngle = 0;
float saturnAngle = 0;
float uranusAngle = 0;
float neptuneAngle = 0;

float orbitSpeed = 0.01;

void setup() {
  size(800, 600, P3D);
}

void draw() {
  background(200);
  translate(width / 2, height / 2);
  drawPlanet(color(255, 255, 0), sunDistance, sunAngle, sunRadius);
  drawPlanet(color(192, 192, 192), mercuryDistance, mercuryAngle, mercuryRadius);
  drawPlanet(color(244, 204, 75), venusDistance, venusAngle, venusRadius);
  drawPlanet(color(0, 0, 255), earthDistance, earthAngle, earthRadius);
  drawPlanet(color(255, 0, 0), marsDistance, marsAngle, marsRadius);
  drawPlanet(color(210, 180, 140), jupiterDistance, jupiterAngle, jupiterRadius);
  drawPlanet(color(255, 215, 0), saturnDistance, saturnAngle, saturnRadius);
  drawPlanet(color(175, 238, 238), uranusDistance, uranusAngle, uranusRadius);
  drawPlanet(color(0, 0, 128), neptuneDistance, neptuneAngle, neptuneRadius);
  updateAngles();
}

void drawPlanet(color planetColor, float distance, float angle, float radius) {
  translate(distance * cos(angle), distance * sin(angle), 0);
  fill(planetColor);
  sphere(radius);
  translate(-distance * cos(angle), -distance * sin(angle), 0);
}

void updateAngles() {
  sunAngle += orbitSpeed;
  mercuryAngle += orbitSpeed * 4;
  venusAngle += orbitSpeed * 2;
  earthAngle += orbitSpeed;
  marsAngle += orbitSpeed * 0.7;
  jupiterAngle += orbitSpeed * 0.3;
  saturnAngle += orbitSpeed * 0.2;
  uranusAngle += orbitSpeed * 0.15;
  neptuneAngle += orbitSpeed * 0.1;
}
