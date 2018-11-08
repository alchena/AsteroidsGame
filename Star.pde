class Star {
	private int myX, myY, mySize;
	public Star(){
		myX = (int)(Math.random() * 500) + 1;
		myY = (int)(Math.random() * 500) + 1;
		mySize = (int)(Math.random() * 2) + 1;
	}
	public void show(){
		fill(255);
		ellipse(myX, myY, mySize, mySize);
	}
}
