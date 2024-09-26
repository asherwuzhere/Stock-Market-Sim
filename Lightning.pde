  int startX = 5;
  int startY = 150;
  int endY = 150;
  int endX = 5;
  int day = 1;
void setup(){
  
  size(300,300);
  background(#FFFFFF);
  frameRate(4);
  strokeWeight(6);
  stroke(0);
  line(0,0,0,300);
  line(0,299,300,299);
  textSize(28);
  fill(0);
  text("Day " + day, 20, 40); 
  
}

void draw(){
  double randX = Math.random()*10;
  double randY = (Math.random()*20)-10;
  int x = (int)randX;
  int y = (int)randY;
  
  endY=endY+y;
  endX=endX+x;
  
  if(endY<150)
    stroke(#00ff00);
  else
    stroke(#ff0000);
  
  System.out.println(x);
  strokeWeight(2);
  line(startX,startY,endX,endY);
  
  startX = endX;
  startY = endY;
  if(endX>300){
    mousePressed();
  }
}

void mousePressed()
{
  startX = 5;
  startY = 150;
  endY = 150;
  endX = 5;
  day = day+1;
  background(#ffffff);
  strokeWeight(6);
  stroke(0);
  line(0,0,0,300);
  line(0,299,300,299);
  textSize(28);
  fill(0);
  text("Day " + day, 20, 40); 
}
