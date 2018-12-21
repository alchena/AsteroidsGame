Spaceship ship = new Spaceship();
ArrayList<Bullet> bullets = new ArrayList<Bullet>();
Star[] shinyStars = new Star [80];
ArrayList<Asteroid> movingAsteroids = new ArrayList<Asteroid>();

public void setup() {
  size(500, 500);
  for (int i = 0; i < shinyStars.length; i++){
    shinyStars[i] = new Star();
  }
  for (int i = 0; i < 11; i++){
    movingAsteroids.add(new Asteroid());
  }
  ship.setX(250);
  ship.setY(250);
}

public void draw() {
  background(0);
  for(int i = 0; i < shinyStars.length; i++){
    shinyStars[i].show();
  }
  for(int i = 0; i < movingAsteroids.size(); i++){
    float distance = dist(ship.getX(), ship.getY(), movingAsteroids.get(i).getX(), movingAsteroids.get(i).getY());
    movingAsteroids.get(i).show();
    movingAsteroids.get(i).move();
    if(distance < 20){
      movingAsteroids.remove(i);
    }
  }
  for(int i = 0; i < bullets.size(); i++){
    bullets.get(i).move();
    bullets.get(i).show();
    if(bullets.get(i).getX() > 499 || bullets.get(i).getX() < 1 ||  bullets.get(i).getY() > 499 || bullets.get(i).getY() < 1){
        bullets.remove(i);
    }
  }
  for(int i = 0; i < bullets.size(); i++){
    for(int z = 0; z < movingAsteroids.size(); z++){
      float distance2 = dist(bullets.get(i).getX(), bullets.get(i).getY(), movingAsteroids.get(z).getX(), movingAsteroids.get(z).getY());
      if(distance2 < 20){
        movingAsteroids.remove(z);
        bullets.remove(i);
        break;
      }
    }
  }
  ship.show();
  ship.move();
}

public void keyPressed() {
  if (key == 'h'){ hyperSpace(); }
  else if (key == 'd') { ship.turn(5); } 
  else if (key == 'a'){ ship.turn(-5); } 
  else if (key == 'w'){ ship.accelerate(.20); } 
  else if (key == 's'){ ship.accelerate(-.10); } 
  else if(key == ' '){ bullets.add(new Bullet(ship));}
}

public void hyperSpace(){
  background(0);
  ship.setX((int)(Math.random() * 500) + 1);
  ship.setY((int)(Math.random() * 500) + 1);
  ship.setDirectionX((double)0);
  ship.setDirectionY((double)0);
  ship.setPointDirection((int)(Math.random() * 360) + 1);
}