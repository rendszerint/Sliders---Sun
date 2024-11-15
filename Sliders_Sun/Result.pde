float circles, circleW;
float rectangles = 24;
float w2 = 360 / rectangles;

void drawResult() {
  result.beginDraw();
  result.background(0);
  result.noStroke();

  //CIRCLES
  result.push();
  result.fill(255);
  circleW = result.width/circles;
  result.translate(circleW/2, 0);
  for (int i = 0; i < circles; i++) {
    result.ellipse(i*circleW, result.width/2, circleW, circleW);
  }
  result.pop();

  //RECTANGLES
  result.push();
  result.fill(#BBFF00);
  result.translate(result.width/2, result.height/2);
  result.rectMode(CENTER);
  for (int i = 0; i < rectangles; i++) {
    result.push();
    result.rotate(radians(i*w2));
    result.translate(225, 0);
    result.rect(0, 0, 150, 30);
    result.pop();
  }
  result.pop();
  result.endDraw();
}
