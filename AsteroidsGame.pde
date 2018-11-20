Spaceship ship = new Spaceship();
Star[] shinyStars = new Star [80];
Asteroid[] movingAsteroids = new Asteroid [7];

public void setup() {
  size(500, 500);
  for (int i = 0; i < shinyStars.length; i++){
  	shinyStars[i] = new Star();
  }
  for (int i = 0; i < movingAsteroids.length;i++){
  	movingAsteroids[i] = new Asteroid();
  }
  ship.setX(250);
  ship.setY(250);
}

public void draw() {
  background(0);
  for (int i = 0; i < shinyStars.length; i++){
  	shinyStars[i].show();
  }
  for (int i = 0; i < movingAsteroids.length; i++){
  	movingAsteroids[i].show();
    movingAsteroids[i].move();
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
}

public void hyperSpace(){
	background(0);
	ship.setX((int)(Math.random() * 500) + 1);
	ship.setY((int)(Math.random() * 500) + 1);
	ship.setDirectionX((double)0);
	ship.setDirectionY((double)0);
	ship.setPointDirection((int)(Math.random() * 360) + 1);
<<<<<<< HEAD
}
=======
}
>>>>>>> 70a47050362e62bc4c32ae2dc881930298bebf42
