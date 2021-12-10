class Spaceship extends Floater  
{   
  public Spaceship() {
    myColor = 255;
    corners = 4;
    xCorners = new int[]{-4, -4, 4, 4}; //x corners
    yCorners = new int[]{-4, 4, 4, -4}; //y corners
    myCenterX = (int)(Math.random()*500);
    myCenterY = (int)(Math.random()*500);
    //your code here
  }
  public void show(){
    fill(myColor);  
    stroke(myColor); 
    super.show();
  }
  public void warp(){
    myXspeed = 0;
    myYspeed = 0;
    myCenterX = (int)(Math.random()*500);
    myCenterY = (int)(Math.random()*500);
  }
  public void brakes(){
    myXspeed = 0;
    myYspeed = 0;
  }
  public double getMyX(){
    return myCenterX;
  }
  public double getMyY(){
    return myCenterY;
  }
  public double getPointDirection(){
    return myPointDirection;
  }
  public void hideShip(){
    corners = 0;
  }
}
