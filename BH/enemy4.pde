class Enemy4 extends GameObject {

  float cooldown, threshold;

  Enemy4() {
    super(-200, 250, 3, 3, 250, #D9CFC1, 20);
    cooldown = 0;
    threshold = 30;
  }

  void act() {
    //super.act();
    //shoot
    cooldown++;
    if (cooldown == threshold) {
  objects.add(new EnemyBullet(x, y+20, 0, 5));

      cooldown = 0;
    }
    //collisions
    int i = 0;
    while (i < objects.size()) {
      GameObject obj = objects.get(i);
      if (obj instanceof Bullet) {
        if (collidingWith(obj)) {
          lives--;
          obj.lives = 0;
          if (lives == 0) {
            objects.add(new particleClass(x, y, random(-2, 2), random(-2, 2), random(10, 20)));
            objects.add(new particleClass(x, y, random(-2, 2), random(-2, 2), random(10, 30)));
            objects.add(new particleClass(x, y, random(-2, 2), random(-2, 2), random(10, 30)));
            objects.add(new particleClass(x, y, random(-2, 2), random(-2, 2), random(10, 30)));
            objects.add(new particleClass(x, y, random(-2, 2), random(-2, 2), random(10, 30)));
            objects.add(new particleClass(x, y, random(-2, 2), random(-2, 2), random(10, 30)));
            objects.add(new powerUp(x, y));
            
          }
        }
      }
      i++;
    }
    if (offScreen()) lives = 0;

    if (x < player1.x) {
      x = x + 3;
    }
    if (x > player1.x) {
      x = x - 3;
    }
    
    if (gunMode >= 16) {
      lives = 100;
    }


    //if (amongus.x > width/2) {
    //  bossx = bossx + 2;
    //}
    //if (amongus.x < width/2) {
    //  bossx = bossx-2;
    //}
  }
  void show() {
    
    fill(c);
    image(bossship,x,y,size,size);
  
  }
}
