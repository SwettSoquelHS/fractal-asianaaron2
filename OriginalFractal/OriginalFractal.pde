void setup(){
  size(800,800);
  frameRate(144);
  
}

void draw(){
  background(255);
  drawCircle(width/2,height/2,300);
}

void drawCircle(float x, float y, float d){
  stroke(0);
  pushMatrix();
  ellipse(x,y,d,d);
  if (d > 1){
    fill(255,0,0,50);
    drawCircle(x+d/2,y,d/2);
    fill(255,0,0,100);
    drawCircle(x-d/2,y,d/2);
    fill(255,0,0,200);
    drawCircle(x,y+d/2,d/2);
  }
  popMatrix();
}
