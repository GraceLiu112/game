void options(){
  background(191, 162, 133);
  fill(255);
  textSize(80);
  text("OPTIONS", 390, 100);
  stroke(0);
  strokeWeight(2);
  tactile(150, 280, 170, 170);
  rect(150, 280, 170, 170);
  image(orange, 75, 205, 150, 150);
  tactile(395, 280, 170, 170);
  rect(395, 280, 170, 170);
  image(kiwi, 320, 205, 150, 150);
  tactile(640, 280, 170, 170);
  rect(640, 280, 170, 170);
  image(tomato, 560, 205, 160, 160);
  
  //slider
  stroke(0);
  fill(0);
  strokeWeight(5);
  line(150, 450, 150, 650);
  fill(255);
  strokeWeight(3);
  circle(150, sliderY, 40);
  size = map(sliderY, 450, 650, 100, 200);
  imageMode(CENTER);
  image(selectedImage, 350, 550, size, size);
  imageMode(CORNER);
  
  // ok button
  stroke(0);
  tactile(640, 570, 200, 100);
  rect(640, 570, 200, 100);
  fill(0);
  textSize(50);
  text("Start", 640, 570);

  
}
void chooseImage(){
  if(mouseX > 65 && mouseX < 235 && mouseY > 195 && mouseY < 365){
    selectedImage = orange;
  }
  else if(mouseX > 310 && mouseX < 480 && mouseY > 195 && mouseY < 365){
    selectedImage = kiwi;
  }
  else if(mouseX > 555 && mouseX < 725 && mouseY > 195 && mouseY < 365){
    selectedImage = tomato;
  }

}

void controlSlider(){
  if (mouseX > 130 && mouseX < 170 && mouseY > 450 && mouseY < 650){
    sliderY = mouseY;
  }

}

void optionsClicks(){
  if(mouseX > 540 && mouseX < 740 && mouseY > 520 && mouseY < 620){
    mode = INTRO;
  }

}
