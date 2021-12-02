//your variable declarations here
Spaceship TheBOX = new Spaceship();
FollowerShips [] TheBOXs;
Star []StarSky;
ArrayList <Asteroid> TheAsteroids;

public void setup() 
{
  //your code here
  size (500,500);
  background (0);
  StarSky = new Star[(int)(Math.random()*100)+100];
  for (int i = 0; i < StarSky.length;i++)
    StarSky[i] = new Star();
  TheAsteroids = new ArrayList <Asteroid>();
  for (int i = 0; i < (int)(Math.random()*21)+5;i++)
    TheAsteroids.add(new Asteroid());
  TheBOX.warp();
  //FollowerShips
  TheBOXs = new FollowerShips[8];
  TheBOXs[0] = new FollowerShips();
  TheBOXs[0].setPosition(TheBOX.getMyX()+10,TheBOX.getMyY());
  TheBOXs[1] = new FollowerShips();
  TheBOXs[1].setPosition(TheBOX.getMyX()+10,TheBOX.getMyY()+10);
  TheBOXs[2] = new FollowerShips();
  TheBOXs[2].setPosition(TheBOX.getMyX(),TheBOX.getMyY()+10);
  TheBOXs[3] = new FollowerShips();
  TheBOXs[3].setPosition(TheBOX.getMyX()-10,TheBOX.getMyY()+10);
  TheBOXs[4] = new FollowerShips();
  TheBOXs[4].setPosition(TheBOX.getMyX()-10,TheBOX.getMyY());
  TheBOXs[5] = new FollowerShips();
  TheBOXs[5].setPosition(TheBOX.getMyX()-10,TheBOX.getMyY()-10);
  TheBOXs[6] = new FollowerShips();
  TheBOXs[6].setPosition(TheBOX.getMyX(),TheBOX.getMyY()-10);
  TheBOXs[7] = new FollowerShips();
  TheBOXs[7].setPosition(TheBOX.getMyX()+10,TheBOX.getMyY()-10);
}
public void draw() 
{
  //your code here
  background (0);
  for (int i = 0; i < StarSky.length;i++)
    StarSky[i].show();
  TheBOX.show();
  TheBOX.move();
  for (int i = 0; i < TheAsteroids.size();i++){
    TheAsteroids.get(i).move();
    TheAsteroids.get(i).show();
  }
  for (int i = 0; i < TheBOXs.length; i++){
    TheBOXs[i].move();
    TheBOXs[i].show();
  }
}
public void keyPressed(){
  if (key == 'v') { //warp
    TheBOX.warp();
    /* Random Warp the rest of fleet
    for (int i = 0; i < TheBOXs.length; i++){
      TheBOXs[i].warp(5,5);
    }
    */
    //keep formation warp rest of fleet
    TheBOXs[0].warp(TheBOX.getMyX()+10,TheBOX.getMyY());
    TheBOXs[1].warp(TheBOX.getMyX()+10,TheBOX.getMyY()+10);
    TheBOXs[2].warp(TheBOX.getMyX(),TheBOX.getMyY()+10);
    TheBOXs[3].warp(TheBOX.getMyX()-10,TheBOX.getMyY()+10);
    TheBOXs[4].warp(TheBOX.getMyX()-10,TheBOX.getMyY());
    TheBOXs[5].warp(TheBOX.getMyX()-10,TheBOX.getMyY()-10);
    TheBOXs[6].warp(TheBOX.getMyX(),TheBOX.getMyY()-10);
    TheBOXs[7].warp(TheBOX.getMyX()+10,TheBOX.getMyY()-10);
  }
  if (key == 'b') { //brakes
    TheBOX.brakes();
    for (int i = 0; i < TheBOXs.length; i++){
      TheBOXs[i].brakes();
    }
  }
  if (key == 'w' || keyCode == UP) { //accelerate forward
    TheBOX.accelerate(0.1);
    for (int i = 0; i < TheBOXs.length; i++){
      TheBOXs[i].accelerate(0.1);
    }
  }
  if (key == 'a' || keyCode == LEFT) { //turn left
    TheBOX.turn(-5);
    for (int i = 0; i < TheBOXs.length; i++){
      TheBOXs[i].turn(-5);
    }
  }
  if (key == 'd' || keyCode == RIGHT) { //turn right
    TheBOX.turn(5);
    for (int i = 0; i < TheBOXs.length; i++){
      TheBOXs[i].turn(5);
    }
  }
  if (key == 's' || keyCode == DOWN) { //accelerate back
    TheBOX.accelerate(-0.05);
    for (int i = 0; i < TheBOXs.length; i++){
      TheBOXs[i].accelerate(-0.05);
    }
  }
}
