float randomWidth;
float randomHeight;
float newWidth;
float newHeight;

void setup() {

  size(500, 500);

  randomWidth = random (50, width);
  randomHeight = random (50, height);
  strokeWeight(5);
  drawRect(width, height);
  
}

void drawRect(float newWidth, float newHeight) {
  fill(159, 227, 247);
  rect(randomWidth, randomHeight, width-randomWidth, height+randomHeight); //4
  fill(243, 130, 130);
  rect(0, 0, randomWidth, randomHeight); //1
  fill(252, 249, 155);
  rect(0, randomHeight, randomWidth, height+randomHeight); //3
  fill(255);
  rect(randomWidth, 0, width-randomWidth, randomHeight); //2

  
    
}
