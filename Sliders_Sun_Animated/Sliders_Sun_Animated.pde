PGraphics result;

void setup () {
  size(800, 800);
  gui();
  result = createGraphics(600, 600);
}

void draw () {
  drawResult();

  imageMode(CENTER);

  pushMatrix();
  translate(width/2, height/2);
  background(0);
  image(result, 0, 0);
  popMatrix();
}
