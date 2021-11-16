class Spaceship extends Floater  
{   
  public Spaceship() {
    myColor = 255;
    corners = 4;
    xCorners = new int[]{-8, -8, 8, 8};
    yCorners = new int[]{-4, 4, 4, -4};
    //your code here
  }
  public void warp(){
    myXspeed = 0;
    myYspeed = 0;
    myCenterX = (int)(Math.random()*500);
    myCenterY = (int)(Math.random()*500);
  }
  public void breaks(){
    myXspeed = 0;
    myYspeed = 0;
  }
}
