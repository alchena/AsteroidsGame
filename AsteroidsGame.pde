Spaceship ship = new Spaceship();
int i = 0;
public void setup() {
  size(500, 500);
  ship.setX(250);
  ship.setY(250);
  frameRate(60);
}

public void draw() {
  background(250);
  ship.show();
}

public void keyPressed() {
	if(key == 'd') {
		ship.setPointDirection(i);
		i+=10;
	} else if(key == 'a') {
		ship.setPointDirection(i);
		i-=10;
	}
}

