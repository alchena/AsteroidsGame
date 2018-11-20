class Asteroid extends Floater{ 
  public int rotationSpeed;
  public Asteroid(){
  corners = 14;
    int[] xCoo = {0, 8, 13, 15, 14, 10, 0, -6, -8, -10, -11, -13, -12, -8}; 
    int[] yCoo = {11, 8, 3, 1, -2, -8, -14, -11, -8, -5, -3, 0, 1, 8}; 
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners = xCoo;
    yCorners = yCoo;
    myCenterX = (int) (Math.random() * 480) + 10;
    myCenterY = (int) (Math.random() * 480) + 10;
    myPointDirection = 0;
    myColor = 51;
    if((int)(Math.random() * 10) >= 4){
      rotationSpeed = (int)(Math.random() * 8) + 1;
      myDirectionX = Math.random();
      myDirectionY = Math.random();
    }else{
      rotationSpeed = (int)(Math.random() * 8 * - 1) - 1;
      myDirectionX = Math.random() * -1;
      myDirectionY = Math.random()* -1;
    }
  }

  public void move(){
    turn(rotationSpeed);
    super.move();
  } 

    public void setX(int x){ myCenterX = x;}  
    public int getX(){ return (int)myCenterX;};   
    public void setY(int y){myCenterY = y;}   
    public int getY(){return (int)myCenterY;}   
    public void setDirectionX(double x){ myDirectionX = x;}   
    public double getDirectionX(){return myDirectionX;}   
    public void setDirectionY(double y){ myDirectionY = y;}   
    public double getDirectionY(){return myDirectionY;}   
    public void setPointDirection(int degrees){myPointDirection = degrees;}   
    public double getPointDirection(){return (double)myPointDirection;}
}