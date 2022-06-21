void game() {
  rectMode(CENTER);
  background(0);
  addObjects();
  gameEngine();
  debug();
}

void addObjects() {
  objects.add(0, new  Star());


  if (frameCount % 60 == 0) objects.add(new Enemy());
  if (frameCount % 250 == 0) objects.add(new Enemy2());
  if (frameCount % 360 == 0) objects.add(new Enemy3());
  if (bossspawn > 2) {
    objects.add(new Enemy4());
    bossspawn = 0;
  }
  //objects.add(new Enemy());
}

void gameEngine() {
  int i = 0;
  while (i < objects.size()) {
    GameObject s = objects.get(i);
    s.act();
    s.show();
    if (s.lives <= 0) {
      objects.remove(i);
    } else {
      i++;
    }
  }
}

void debug() {
  fill(255);
  text(frameRate, 17, 20);
  text(objects.size(), 20, 40);
  println(bossspawn);
}

void gameClicks() {
}
