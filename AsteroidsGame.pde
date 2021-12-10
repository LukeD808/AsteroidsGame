//your variable declarations here
Spaceship TheBOX = new Spaceship();
//FollowerShips [] TheBOXs;
Star []StarSky;
ArrayList <Asteroid> TheAsteroids;
ArrayList <Bullet> TheMissiles;
ArrayList <FollowerShips> TheBOXs;
int HP = 9;
boolean pressable = true;

public void setup() 
{
  //your code here
  size (500,500);
  background (0);
  StarSky = new Star[(int)(Math.random()*100)+100];
  for (int i = 0; i < StarSky.length;i++)
    StarSky[i] = new Star();
  TheAsteroids = new ArrayList <Asteroid>();
  for (int i = 0; i < (int)(Math.random()*11)+10;i++)
    TheAsteroids.add(new Asteroid());
  //FollowerShips
  //TheBOXs = new FollowerShips[8];
  TheBOXs = new ArrayList <FollowerShips>();
  for (int i = 0; i < 8; i++)
    TheBOXs.add(new FollowerShips());
  //TheBOXs[0] = new FollowerShips();
  //TheBOXs[0].setPosition(TheBOX.getMyX()+8,TheBOX.getMyY());
  TheBOXs.get(0).setPosition(TheBOX.getMyX()+8,TheBOX.getMyY());
  //TheBOXs[1] = new FollowerShips();
  //TheBOXs[1].setPosition(TheBOX.getMyX()+8,TheBOX.getMyY()+8);
  TheBOXs.get(1).setPosition(TheBOX.getMyX()+8,TheBOX.getMyY()+8);
  //TheBOXs[2] = new FollowerShips();
  //TheBOXs[2].setPosition(TheBOX.getMyX(),TheBOX.getMyY()+8);
  TheBOXs.get(2).setPosition(TheBOX.getMyX(),TheBOX.getMyY()+8);
  //TheBOXs[3] = new FollowerShips();
  //TheBOXs[3].setPosition(TheBOX.getMyX()-8,TheBOX.getMyY()+8);
  TheBOXs.get(3).setPosition(TheBOX.getMyX()-8,TheBOX.getMyY()+8);
  //TheBOXs[4] = new FollowerShips();
  //TheBOXs[4].setPosition(TheBOX.getMyX()-8,TheBOX.getMyY());
  TheBOXs.get(4).setPosition(TheBOX.getMyX()-8,TheBOX.getMyY());
  //TheBOXs[5] = new FollowerShips();
  //TheBOXs[5].setPosition(TheBOX.getMyX()-8,TheBOX.getMyY()-8);
  TheBOXs.get(5).setPosition(TheBOX.getMyX()-8,TheBOX.getMyY()-8);
  //TheBOXs[6] = new FollowerShips();
  //TheBOXs[6].setPosition(TheBOX.getMyX(),TheBOX.getMyY()-8);
  TheBOXs.get(6).setPosition(TheBOX.getMyX(),TheBOX.getMyY()-8);
  //TheBOXs[7] = new FollowerShips();
  //TheBOXs[7].setPosition(TheBOX.getMyX()+8,TheBOX.getMyY()-8);
  TheBOXs.get(7).setPosition(TheBOX.getMyX()+8,TheBOX.getMyY()-8);
  //Bullets
  TheMissiles = new ArrayList <Bullet>();
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
    float d = dist((float)TheBOX.getMyX(),(float)TheBOX.getMyY(),(float)TheAsteroids.get(i).getAsteroidCenterX(),(float)TheAsteroids.get(i).getAsteroidCenterY());
    if (d < 24){
      TheAsteroids.remove(i);
      if (HP > 1){
         TheBOXs.remove(0);
         HP--;
      }
      else if(HP == 1){
         HP--;
      }
    }
    int nI = 0;
    while (nI < TheMissiles.size()){
      float dA = dist((float)TheMissiles.get(nI).getBulletX(), (float)TheMissiles.get(nI).getBulletY(),(float)TheAsteroids.get(i).getAsteroidCenterX(),(float)TheAsteroids.get(i).getAsteroidCenterY());
      if (dA < 12){
        TheAsteroids.remove(i);
        TheMissiles.remove(nI);
        nI = TheMissiles.size()-1;
      }
      /*
      float dB = dist((float)TheMissiles.get(nI).getBulletX(), (float)TheMissiles.get(nI).getBulletY(),(float)TheBOX.getMyX(),(float)TheBOX.getMyY());
      if (dB < 24){
        TheMissiles.remove(nI);
        if (HP > 1){
         TheBOXs.remove(0);
         HP--;
      }
      else if(HP == 1){
         HP--;
      }
      }
      */
      nI++;
    }
  }
  for (int i = 0; i < TheBOXs.size(); i++){
    //TheBOXs[i].move();
    TheBOXs.get(i).move();
    //TheBOXs[i].show();
    TheBOXs.get(i).show();
  }
  for (int i = 0; i < TheMissiles.size(); i++){
    TheMissiles.get(i).move();
    TheMissiles.get(i).show();
  }
  if (HP == 0){
    TheBOX.hideShip();
    textSize(75);
    text("You Blew Up", 25, 250);
  }
  if (TheAsteroids.size() == 0){
    textSize(75);
    text("You Won", 90, 250);
  }
}
public void keyPressed(){
  if (pressable == true){
  if (key == 'v') { //warp
    TheBOX.warp();
    /* Random Warp the rest of fleet
    for (int i = 0; i < TheBOXs.length; i++){
      TheBOXs[i].warp(5,5);
    }
    */
    //keep formation warp rest of fleet
    //TheBOXs[0].warp(TheBOX.getMyX()+8,TheBOX.getMyY());
    //TheBOXs[1].warp(TheBOX.getMyX()+8,TheBOX.getMyY()+8);
    //TheBOXs[2].warp(TheBOX.getMyX(),TheBOX.getMyY()+8);
    //TheBOXs[3].warp(TheBOX.getMyX()-8,TheBOX.getMyY()+8);
    //TheBOXs[4].warp(TheBOX.getMyX()-8,TheBOX.getMyY());
    //TheBOXs[5].warp(TheBOX.getMyX()-8,TheBOX.getMyY()-8);
    //TheBOXs[6].warp(TheBOX.getMyX(),TheBOX.getMyY()-8);
    //TheBOXs[7].warp(TheBOX.getMyX()+8,TheBOX.getMyY()-8);
  }
  if (key == 'b') { //brakes
    TheBOX.brakes();
    for (int i = 0; i < TheBOXs.size(); i++){
      //TheBOXs[i].brakes();
      TheBOXs.get(i).brakes();
    }
  }
  if (key == 'w' || keyCode == UP) { //accelerate forward
    TheBOX.accelerate(0.1);
    for (int i = 0; i < TheBOXs.size(); i++){
      //TheBOXs[i].accelerate(0.1);
      TheBOXs.get(i).accelerate(0.1);
    }
  }
  if (key == 'a' || keyCode == LEFT) { //turn left
    TheBOX.turn(-5);
    for (int i = 0; i < TheBOXs.size(); i++){
      //TheBOXs[i].turn(-5);
      TheBOXs.get(i).turn(-5);
    }
  }
  if (key == 'd' || keyCode == RIGHT) { //turn right
    TheBOX.turn(5);
    for (int i = 0; i < TheBOXs.size(); i++){
      //TheBOXs[i].turn(5);
      TheBOXs.get(i).turn(5);
    }
  }
  if (key == 's' || keyCode == DOWN) { //accelerate back
    TheBOX.accelerate(-0.05);
    for (int i = 0; i < TheBOXs.size(); i++){
      //TheBOXs[i].accelerate(-0.05);
      TheBOXs.get(i).accelerate(-0.05);
    }
  }
  if (key == ' ') {
    TheMissiles.add(new Bullet(TheBOX));
    /*  The Bullet direction
    if(TheBOX.getPointDirection() < 180 && TheBOX.getPointDirection() > 270){
      TheMissiles.get(TheMissiles.size()-1).setBulletX(+25);
    }
    if(TheBOX.getPointDirection() > 180 && TheBOX.getPointDirection() < 270){
      TheMissiles.get(TheMissiles.size()-1).setBulletX(-25);
    }
    */
  }
  }
}
