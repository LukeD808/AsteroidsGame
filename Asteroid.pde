class Asteroid extends Floater
{
  private double rotationSpeed;
  public Asteroid(){
    corners = 4;
    xCorners = new int[]{-8, -8, 8, 8}; //x corners
    yCorners = new int[]{-8, 8, 8, -8}; //y corners
    myColor = 255;
    myCenterX = (int)(Math.random()*500);
    myCenterY = (int)(Math.random()*500);
    myPointDirection = (int)(Math.random()*360);
    rotationSpeed = 0.5;
  }
  public void move(){
    turn(rotationSpeed);
    super.move();
  }
  public void show(){
    stroke(255);
    noFill();
    super.show();
  }
  public void getAsteroidCenterX(){
    
  }
  public void getAsteroidCenterY(){
    
  }
}
