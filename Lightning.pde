let startX = 5;
let startY = 150;
let endY = 150;
let endX = 5;
let day = 1;

function setup() {
  createCanvas(300, 300);
  background(255);
  frameRate(4);
  strokeWeight(6);
  stroke(0);
  line(0, 0, 0, 300);
  line(0, 299, 300, 299);
  textSize(28);
  fill(0);
  text("Day " + day, 20, 40);
}

function draw() {
  let randX = Math.random() * 10;
  let randY = (Math.random() * 20) - 10;
  
  endY += randY;
  endX += randX;

  stroke(endY < 150 ? color(0, 255, 0) : color(255, 0, 0));

  line(startX, startY, endX, endY);
  
  startX = endX;
  startY = endY;

  if (endX > 300) {
    mousePressed();
  }
}

function mousePressed() {
  startX = 5;
  startY = 150;
  endY = 150;
  endX = 5;
  day++;

  background(255);
  strokeWeight(6);
  stroke(0);
  line(0, 0, 0, 300);
  line(0, 299, 300, 299);
  textSize(28);
  fill(0);
  text("Day " + day, 20, 40);
}
