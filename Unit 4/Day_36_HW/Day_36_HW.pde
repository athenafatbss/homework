//void setup() {
  //size(500,500);
//}
 
//void draw() {
  //drawCircle(0,height/2,height/2);
//}
 
//void drawCircle(int x, int y, float radius) {
  //stroke(0);
  //strokeWeight(0.5);
  //noFill();
  //ellipse(x, y, radius, radius);
  //if(radius > 2) {
    //radius -= 10f;
    //drawCircle(x+25, y, radius);
  //}
//}

void setup(){
  size(400, 400);
  noFill();
  drawCircle(0, height/2);
}

void drawCircle(int x, float radius){

  ellipse( x+10, height/2, radius-20, radius-20);
  
  if(radius >20){
    drawCircle(x+15, radius-6);
  }
  
}
