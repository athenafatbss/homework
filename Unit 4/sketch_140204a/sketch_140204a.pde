void setup() {
  size(800, 700);

  //move the origin
  translate(width/2, height);

  //make the line thicker
  strokeWeight(4);

  //make the tree upright
  rotate(radians(-90));
  drawTree(10); // with two "generations" of base, left, branch, right branch

}

void drawTree(int depth) {

  if (depth > 0) {

    //draw base
    line(0, 0, 100, 0); //drawn alon x-axis

    //move to the end of the base
    translate(100, 0);
    
    //draw left branch
    pushMatrix();
    rotate(radians(random(-30,-270))); 
    line(0, 0, 100, 0); //draw along the x-axis
    translate(100, 0); //translate to end of branch before drawing next y
    scale(0.7, 0.8);
    drawTree(depth - 1);
    popMatrix();
    
    //draw right branch
    pushMatrix();
    rotate(radians(random(30, 270)));
    line(0, 0, 100, 0); //draw along the x-axis
    translate(100,0);
    scale(0.7, 0.8);
    drawTree(depth - 1);
    popMatrix(); 
  }
}
