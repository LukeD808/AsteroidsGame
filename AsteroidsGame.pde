//your variable declarations here
Spaceship TheBOX = new Spaceship();
Star []StarSky;
public void setup() 
{
  //your code here
  size (500,500);
  background (0);
  StarSky = new Star[(int)(Math.random()*100)+100];
  for (int i = 0; i < StarSky.length;i++)
    StarSky[i] = new Star();
  TheBOX.warp();
}
public void draw() 
{
  //your code here
  background (0);
  for (int i = 0; i < StarSky.length;i++)
    StarSky[i].show();
  TheBOX.show();
  TheBOX.move();
}
public void keyPressed(){
  if (key == 'v') { //warp
    TheBOX.warp();
  }
  if (key == 'b') { //brakes
    TheBOX.brakes();
  }
  if (key == 'w' || keyCode == UP) { //accelerate forward
    TheBOX.accelerate(0.1);
  }
  if (key == 'a' || keyCode == LEFT) { //turn left
    TheBOX.turn(-5);
  }
  if (key == 'd' || keyCode == RIGHT) { //turn right
    TheBOX.turn(5);
  }
  if (key == 's' || keyCode == DOWN) { //accelerate back
    TheBOX.accelerate(-0.05);
  }
}
