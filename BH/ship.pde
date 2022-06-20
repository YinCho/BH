class Starfighter extends GameObject {
  int cooldown, threshold;
  int livesRenew;

  Starfighter() {
    super(width/2, height/2, 0, 0, 60, #FF0000, 1000);
    threshold = 5;
    cooldown = threshold;
  }

  void act() {
    super.act();

    //manage gun
    cooldown ++;
    if (space && cooldown >= threshold) {
      if (gunMode == 11) {
        objects.add(new Bullet(x, y+20));
      } else if (gunMode == 12) {
        objects.add (new Bullet(x-10, y+20));
        objects.add (new Bullet(x+10, y+20));
      } else if (gunMode == 13) {
        objects.add (new Bullet(x-15, y+20));
        objects.add (new Bullet(x-0, y+20));
        objects.add (new Bullet(x+15, y+20));
      } else if (gunMode == 14) {
        objects.add (new Bullet(x-10, y+20));
        objects.add (new Bullet(x-5, y+20));
        objects.add (new Bullet(x+10, y+20));
        objects.add (new Bullet(x+10, y+20));
      }
      cooldown = 0;
      if (offScreen()) lives = 0;
    }
    //controlling
    if (up) vy = -7;
    if (down) vy = 7;
    if (left) vx = -7;
    if (right) vx = 7;

    if (!up && !down) vy = vy * 0.9;
    if (!left && !right) vx = vx * 0.9;

    //collisions
    int i = 0;

    while (i < objects.size()) {
      GameObject among = objects.get(i);
      if (among instanceof EnemyBullet) {
        if (collidingWith(among)) {
          among.lives--;
          lives--;
        }
      }
      i++;
    }
    if (lives == 0) {
      mode = GAMEOVER;

      lives = 3;
    }
  }

  boolean collidingWith(GameObject among) {
    return dist(among.x, among.y, x, y) < among.size/2 + size/2;
  }

  boolean offScreen() {
    return x < 0 || x > width || y < -50 || y > height;
  }

  void show() {
    y = max(y, 0+size/3);
    x = min(x, width-size/3);
    x = max(x, 0+size/3);
    y = min(y, height-size/3);
    imageMode(CENTER);
    //image(ship1,x,y,size,size);
    image(ship2, x, y, size, size);
  }
}
