void setup() {
  
  size(800, 400);
  
  //move the origin
  translate(width/2, height);

  //make the line thicker
  strokeWeight(4);

  //make the tree upright
  rotate(radians(-90));
  drawTree(15); // with two "generations" of base, left, branch, right branch

}

void drawTree(float depth) {

  if (depth > 0) {

    //draw base
    stroke(0, 0, 255);
    line(0, 0, 100, 0); //drawn alon x-axis
    
    //move to the end of the base
    translate(100, 0);
    
    //draw left branch
    pushMatrix();
    rotate(radians(random(-55,-150))); 
    stroke(255, 0, 0);
    line(0, 0, 100, 0); //draw along the x-axis
    translate(random(40, 100), 0); //translate to end of branch before drawing next y
    scale(0.7, 0.6);
    drawTree(depth - 1);
    popMatrix();
    
    //draw right branch
    pushMatrix();
    rotate(radians(random(45, -200)));
    stroke(0, 255, 0);
    line(0, 0, 100, 0); //draw along the x-axis
    translate(random(30, 100),0);
    scale(0.5, 0.6);
    drawTree(depth - 1);
    popMatrix(); 
  }
}
