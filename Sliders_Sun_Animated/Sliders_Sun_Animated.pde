PGraphics result;
PFont fMedium, fRegular;

void setup () {
  size(800, 800);
  gui();
  result = createGraphics(600, 600);
}

void draw () {
  drawResult();
  imageMode(CENTER);
  push();
  translate(width/2, height/2);
  background(#101075);
  image(result, 0, 25);
  pop();
}
