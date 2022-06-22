void pause() {
  if (pause == true) { 
    mode = PAUSE;
    textSize(90);
    fill(#767B91);
    text("PAUSED", width/2-180, height/2);
  } else if (pause == false) {
    mode = GAME;
    textSize(10);
  }
}

void pauseClicks() {
}
