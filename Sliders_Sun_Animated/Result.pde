float circles, circleW;
float rectangles = 24;
float rectW = 360/rectangles;
int rectAnim = 2;
int circleAnim = 2;

void drawResult() {
  result.beginDraw();
  result.background(0);
  result.noStroke();
  fRegular = createFont("PPNeueMontreal-Regular.otf", 14);
  
  //CIRCLES
  result.push();
  result.fill(255);
  circleW = result.width/circles;
  result.translate(circleW/2, 0);
  for (int i = 0; i < circles; i++) {
    float sinWave = map(sin(radians(frameCount*(i % circleAnim))), -1, 1, -200, 200);
    result.ellipse((i*circleW), result.width/2 + sinWave, circleW, circleW);
  }
  result.pop();
  
  //RECTANGLES
  result.push();
  result.fill(#BBFF00);
  result.translate(result.width/2, result.height/2);
  result.rectMode(CENTER);
  for (int i = 0; i < rectangles; i++) {
    float sinWave = map(sin(radians(frameCount*(i % rectAnim))), -1, 1, -50, 50);
    result.push();
    result.rotate(radians(i*rectW));
    result.translate(225, 0);
    result.rect(sinWave, 0, 150, 30);
    result.pop();
  }
  result.pop();
  
  // TEXT
  result.push();
  result.fill(0);
  result.translate(result.width/2, result.height/2);
  result.textFont(fRegular);
  result.textAlign(CENTER);
  result.textSize(150);
  result.text(cp5.get(Textfield.class, "input").getText(), 0, 50);
  result.pop();
  result.endDraw();
}
