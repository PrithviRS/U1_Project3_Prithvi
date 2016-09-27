/* This is  */



Projectile bullets[];

int bulletNum = 0;
int x = 39, y = 43, w = 50, h = 15;
public int playerX = 0, playerY = 600;

void setup()
{
  fullScreen();
  bullets = new Projectile[10];
}

void draw()
{

  background(0);
  fill(255);
  ellipse(playerX, playerY, 50, 50);
  for (int i =0; i < bulletNum; i++)
  {
    bullets[i].Draw();
    bullets[i].Move();
    println("SHOOTIN!");
  }
  if (bulletNum <= 10)
{
  fill(255);
  text( 10 - +bulletNum, 40, 40);
}

if (bulletNum == 10)
{
  fill(0);
  text ("RELOAD", 40, 55);
  fill(255);
   rect (x, y, w, h);
  
  
}
  
  
    
  
}

void keyPressed()
{
  if (key == CODED)
  {
   if (keyCode == UP)
   {
    playerY -= 5; 
   }
   
   if (keyCode == UP)
   {
    playerY -= 5; 
   }
  
  if(mousePressed && mouseX > x && mouseY > y && mouseX < x+w && mouseY < y+h)
  {
   bulletNum = 0; 
  }
  
  if (keyCode == RIGHT)
  {
    if ( bulletNum < 10 )
    {
      bullets[bulletNum] = new Projectile();
      bullets[bulletNum].SetSpeed(10);
      println("Making bullet#: "+bulletNum);
      bulletNum++;
    } //else
   // {
     // bulletNum = 0;
    //}
  }
  }
}