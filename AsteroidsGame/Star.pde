class Star //note that this class does NOT extend Floater
{
  //your code here
  private int myX, myY, myColor,Opacity;
  public Star(){
    myX = (int)(Math.random()*500);
    myY = (int)(Math.random()*500);
    myColor = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
    Opacity = (int)(Math.random()*150);
  }
  public void show() {
    noStroke();
    fill(myColor, Opacity);
    rect(myX, myY, 4, -4);
  }
}
