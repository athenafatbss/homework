void setup(){
  size(400, 400);
  noFill();
  drawCircle(width/2, height/2 ,height/2);
  drawCircle1(width/2, height/2 ,height/2);
}

void drawCircle(float x, float y, float radius){

  ellipse( x+10, y-15, radius-20, radius-20);
  
  if(radius >20){
    drawCircle(x+15, y-15, radius-10);
  }
  
}
void drawCircle1(float x, float y, float radius){

  ellipse( x+10, y-10, radius-10, radius-10);
  
  if(radius >20){
    drawCircle(x-15, y+15, radius-10);
  }
  
} //<>//
