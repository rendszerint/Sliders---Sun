PGraphics result;

void setup () {
fullScreen();
  gui();
  result = createGraphics(600, 600);
}

void draw () {
  drawResult();

  imageMode(CENTER);

  push();
  translate(width/2, height/2);
  background(0);
  image(result, 0, 0);
  pop();
}
