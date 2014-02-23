void setup() {
  background(255);
  size(900, 600);

  //make the line thicker
  strokeWeight(8);

  frameRate(50);
}

void draw() {
  
  noStroke();
  fill(255, 99);
  rect(0, 0, width, height);
    
   //move the origin
  translate(width/2, height);
  
 //make the tree upright
  rotate(radians(random(-80, -100)));
  drawTree(15); // with two "generations" of base, left, branch, right branch
}

void drawTree(float depth) {

  if (depth > 0) {

    //draw base
    if (depth<10){
      stroke(110, 127, 70);
    } else{
      stroke(104, 90, 72);
    }
    line(0, 0, 100, 0); //drawn alon x-axis
    
    //move to the end of the base
    translate(100, 0);
    
    //draw left branch
    pushMatrix();
    rotate(radians(random(-55,-150))); 
    //stroke(255, 0, 0);
        if (depth<10){
      stroke(110, 127, 70);
    } else{
      stroke(104, 90, 72);
    }
    line(0, 0, 100, 0); //draw along the x-axis
    translate(random(40, 100), 0); //translate to end of branch before drawing next y
    scale(random(0.5, 0.8), random(0.5, 0.7));
    drawTree(depth - 1);
    popMatrix();
    
    //draw right branch
    pushMatrix();
    rotate(radians(random(45, -200)));
    //stroke(0, 255, 0);
        if (depth<10){
      stroke(110, 127, 70);
    } else{
      stroke(104, 90, 72);
    }
    line(0, 0, 100, 0); //draw along the x-axis
    translate(random(30, 100),0);
    scale(random(0.5, 0.8), random(0.5, 0.8));
    drawTree(depth - 1);
    popMatrix(); 
  }
}
