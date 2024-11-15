import controlP5.*;
ControlP5 cp5;

void gui() {
  
  fMedium = createFont("PPNeueMontreal-Medium.otf", 14);
  ControlFont font = new ControlFont(fMedium);
  fill(#171717);
  textSize(18);
  cp5 = new ControlP5(this);

  cp5.addSlider("circles")
    .setColorBackground(color(#BBFF00))
    .setColorForeground(color(#FFFFFF))
    .setColorActive(color(#FFFFFF))
    .setColorValueLabel(color(0))
    .setFont(font)

    .setPosition(100, 25)
    .setSize(200, 30)
    .setRange(1, 12)
    .setValue(1)
    .setNumberOfTickMarks(12)
    ;

  cp5.addSlider("rectangles")
    .setColorBackground(color(#BBFF00))
    .setColorForeground(color(#FFFFFF))
    .setColorActive(color(#FFFFFF))
    .setColorValueLabel(color(0))
    .setFont(font)

    .setPosition(100, 65)
    .setSize(200, 30)
    .setRange(0, 24)
    .setValue(24)
    .setNumberOfTickMarks(24)
    ;

  cp5.addSlider("circleAnim")
    .setColorBackground(color(#BBFF00))
    .setColorForeground(color(#FFFFFF))
    .setColorActive(color(#FFFFFF))
    .setColorValueLabel(color(0))
    .setFont(font)

    .setPosition(415, 25)
    .setSize(200, 30)
    .setRange(1, 8)
    .setValue(2)
    .setNumberOfTickMarks(8)
    ;

  cp5.addSlider("rectAnim")
    .setColorBackground(color(#BBFF00))
    .setColorForeground(color(#FFFFFF))
    .setColorActive(color(#FFFFFF))
    .setColorValueLabel(color(0))
    .setFont(font)

    .setPosition(415, 65)
    .setSize(200, 30)
    .setRange(1, 8)
    .setValue(2)
    .setNumberOfTickMarks(8)
    ;

  cp5.addTextfield("input")
    .setPosition(100, 740)
    .setSize(600, 30)
    .setColorBackground(color(#BBFF00))
    .setFont(font)
    .setColor(color(0))
    ;
}
