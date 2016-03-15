class Mover {
PVector location;
PVector velocity;
PVector gravity = new PVector(0, 0.1);
float reboundCoeff = 0.8f;
Mover() {
location = new PVector(width/2f, height/2f);
velocity = new PVector(1f, 1f);
}
void update() {
location.add(velocity);
velocity.add(gravity);
}
void display() {
stroke(0);
strokeWeight(2);
fill(127);
ellipse(location.x, location.y, 48, 48);
}
void checkEdges() {
if (location.x + 24 > width) {
velocity.x = velocity.x * -1 * reboundCoeff;
location.x = width - 24;
}
else if (location.x - 24 < 0) {
velocity.x = velocity.x * -1* reboundCoeff;
location.x = 24;
}
if (location.y + 24 > height) {
velocity.y = velocity.y * -1 * reboundCoeff;
location.y = height - 24;
}
else if (location.y - 24 < 0) {
velocity.y = velocity.y * -1 * reboundCoeff;
location.y = 24;
}
}
}