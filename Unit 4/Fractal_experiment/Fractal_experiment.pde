void setup() {
  size(700, 700);
}

void draw() {
  background(255);
  drawSquare(width/2, height/2, 300);
}

void drawSquare(float x, float y, float radius) {
  stroke(0);
  noFill();
  rect(x, y, radius, radius);
  if (radius > 5) {
    drawSquare(x + radius/4, y, radius/3);
    drawSquare(x - radius/3, y, radius/3);
    drawSquare(x, y + radius/3, radius/2);
    drawSquare(x, y - radius/2, radius/2);
  }
}
