void game(){
  theme.play();
  background(0, 255, 0);
  
  fill(0);
  textSize(40);
  text("Score: " + score, width/2, 50);
  text("Lives: " + lives, width/2, 100);
  
  //pause button
  stroke(0);
  fill(255);
  circle(100, 100, 100);
  
  //display target
  fill(255);
  stroke(0);
  strokeWeight(2);
  circle(x, y, size);
  imageMode(CENTER);
  image(selectedImage, x, y, size, size);
  imageMode(CORNER);
  
  //moving
  x += vx;
  y += vy;
  
  //bouncing
  if (x < d/2 || x > width-d/2){
    vx = vx * -1;
  }
  if(y < d/2 || y > height-d/2){
    vy = vy * -1;
  }

}

void gameClicks(){
  if(dist(mouseX, mouseY, x, y) < d/2){
    score = score + 1;
    coin.rewind();
    coin.play();
  }
  else if(dist(mouseX, mouseY, 100, 100) < 50){
    mode = PAUSE;
  }
  else{
    lives = lives - 1;
    bump.rewind();
    bump.play();
    if(lives == 0){
      mode = GAMEOVER;
      gameover.rewind();
      gameover.play();
    }
  }
}
