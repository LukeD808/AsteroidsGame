class Bullet extends Floater
{
  public Bullet (Spaceship TheBOX){
    myColor = 255;
    corners = 4;
    xCorners = new int[]{-4, -4, 4, 4}; //x corners
    yCorners = new int[]{-4, 4, 4, -4}; //y corners
    myCenterX = TheBOX.getMyX();
    myCenterY = TheBOX.getMyY();
    myPointDirection = TheBOX.getPointDirection();
    accelerate(3);
  }
  public double getBulletX(){
    return myCenterX;
  }
  public double getBulletY(){
    return myCenterY;
  }
  public void setBulletX(double sX){
    myCenterX += sX;
  }
  public void setBulletY(double sY){
    myCenterY += sY;
  }
}
