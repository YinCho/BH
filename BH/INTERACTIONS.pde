void keyPressed() {
  if (keyCode == RIGHT) right = true;
  if (keyCode == LEFT)  left = true;
  if (keyCode == UP)    up = true;
  if (keyCode == DOWN)  down = true;
  if (key == ' ')       space = true;
  //if (key == 'p') pause = true;
}


void keyReleased() {
  if (keyCode == RIGHT) right = false;
  if (keyCode == LEFT)  left = false;
  if (keyCode == UP)    up = false;
  if (keyCode == DOWN)  down = false;
  if (key == ' ')       space = false;
  if (key == 'p') pause = !pause;
}
