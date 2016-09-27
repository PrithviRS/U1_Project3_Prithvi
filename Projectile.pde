class Projectile
{
  //Member Variables
  private int _posX;
  private int _posY;
  private int _width;
  private int _height;
  private int _speed;

  //Constructor
  Projectile()
  {
    _posX =  playerX;
    _posY =  playerY;
    _width = 100;
    _height = 10;
    _speed = 0;
  }


  //Member Functions
  void Draw()
  {
    fill( (int)random(0,255),0,0);
    ellipse(_posX, _posY, _width, _height);
  }

  void Update()
  {
    Move();
  }

  void Move()
  {
    _posX += _speed;
  }
  //Getters
  int GetSpeed() 
  { 
    return _speed;
  }

  //Setters
  void SetSpeed(int newSpeed) 
  { 
    _speed = newSpeed;
  }
}