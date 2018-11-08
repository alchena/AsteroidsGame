class Spaceship extends Floater {
  
  public Spaceship(){
    corners = 4;
    int[] xCoo = {-8, 16, -8, 0}; 
    int[] yCoo = {-8, 0, 8, 0}; 
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners = xCoo;
  	yCorners = yCoo;
    myCenterX = 0;
    myCenterY = 0;
    myDirectionX = 0;
    myDirectionY = 0;
    myPointDirection = 0;
    myColor = 234;
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
