Particle [] Bob = new Particle[100];

void setup()
{
  size(600,600);
  for(int i = 0; i < 50; i++){
  Bob[i] = new Particle();
  }
  for(int i = 50; i < 100; i++){
  Bob[i] = new Particle2();
  }
}
void draw()
{ 
  background(0);
  for(int i = 0; i < 50; i++){
  Bob[i].move();
  Bob[i].show();
  if ((Bob[i].X > 600 || Bob[i].X < 0)||(Bob[i].Y > 600 || Bob[i].Y < 0)){
    Bob[i].X = 300;
    Bob[i].Y = 300;
  }
  }
  for(int i = 50; i < 100; i++){
  Bob[i].move();
  Bob[i].show();
  }

}
class Particle
{
  double X,Y,angle,speed;
  int Color1,Color2,Color3;
  Particle(){
    speed = (float)(Math.random()*2)+1;
    Color1 = (int)(Math.random()*255);
    Color2 = (int)(Math.random()*255);
    Color3 = (int)(Math.random()*255);
    angle = (float)(3.14*(Math.random()*2));
    X = 300;
    Y = 300;
  }
  void move(){
    X = X + speed*cos((float)angle);
    Y = Y + speed*sin((float)angle);
  }
  void show(){
    noStroke();
    fill(Color1,Color2,Color3);
    ellipse((float)X,(float)Y,5,5);
    
  }
}

class Particle2 extends Particle 
{
  Particle2(){
    speed = (int)(Math.random()*5)+2;
    Color1 = (int)(Math.random()*255);
    Color2 = (int)(Math.random()*255);
    Color3 = (int)(Math.random()*255);
    angle = (float)(3.14*(Math.random()*2));
    X = 300;
    Y = 300;
  }
  
  void move(){
    angle = angle + (float)((6.28/1500)*speed);
    if ( angle >= 6.28){
      angle = angle - 6.28;
    }
    X = X + speed*cos((float)angle);
    Y = Y + speed*sin((float)angle);
  }
  void show(){
    stroke(Color1,Color2,Color3);
    strokeWeight(2);
    line(300,300,(float)X,(float)Y);
  }
}
