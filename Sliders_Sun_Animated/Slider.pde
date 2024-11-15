PFont f;
import controlP5.*;
ControlP5 cp5;



void gui() {
  f = createFont("PPNeueMontreal-Medium.otf", 14);
  ControlFont font = new ControlFont(f);
  fill(#171717);
  textSize(18);
  cp5 = new ControlP5(this);

  cp5.addSlider("circles")
    .setColorBackground(color(#BBFF00))
    .setColorForeground(color(#FFFFFF))
    .setColorActive(color(#FFFFFF))
    .setColorValueLabel(color(0))

    .setFont(font)

    .setPosition(0, 0)
    .setSize(width/4, 30)
    .setRange(1, 10)
    .setValue(1)
    .setNumberOfTickMarks(10)
    ;

  cp5.addSlider("rectangles")
    .setColorBackground(color(#BBFF00))
    .setColorForeground(color(#FFFFFF))
    .setColorActive(color(#FFFFFF))
    .setColorValueLabel(color(0))

    .setFont(font)

    .setPosition(0,40)
    .setRange(0, 24)
    .setNumberOfTickMarks(24)
    .setSize(width/4, 30)
    ;
}
