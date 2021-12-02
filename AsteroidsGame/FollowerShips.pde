class FollowerShips extends Spaceship
{
public FollowerShips(){
}
public void setPosition(double x, double y){
    myCenterX = x;
    myCenterY = y;
  }
public void warp(double x, double y){
  myXspeed = 0;
  myYspeed = 0;
  myCenterX = x;
  myCenterY = y;
}
}
