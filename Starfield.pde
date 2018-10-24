Particle[] bob;

void setup()
{
  size(300,300);
  bob = new Particle[3000];
  for(int i=0; i<bob.length; i++)
  {
    bob[i] = new NormalParticle();
  }
  bob[0] = new OddballParticle();
  bob[1] = new JumboParticle();
  bob[2] = new JumboParticle();
  bob[3] = new JumboParticle();
}
void draw()
{
  noStroke();
  fill(0,100,200);
  rect(0,0,150,150);
  fill(100,200,0);
  rect(150,150,150,150);
  for(int i=0; i<bob.length; i++)
  {
    bob[i].move();
    bob[i].show();
  }

  
}
 
class NormalParticle implements Particle
{
   int myColor;
   double myX,myY, mySpeed, myAngle;
   NormalParticle()
   {
     myX = 150; 
     myY = 150;
     mySpeed = (double)(Math.random()*2);
     myAngle = (double)(Math.random()*2*Math.PI);
     myColor = (int)(Math.random()*255);
   }
   public void move()
   {
     myX = myX + (double)(Math.sin(myAngle))* mySpeed;
     myY = myY  + (double)(Math.tan(myAngle)) *mySpeed;
   }
   public void show()
   {
     noStroke();
     fill(  myColor, myColor, 0);
     ellipse((float)myX,(float)myY, 2,2);
   }
}
interface Particle
{
    public void show();
    public void move();
}
class OddballParticle implements Particle
{
    
    int my1X, my1Y;
    OddballParticle()
    {
         my1Y = 150; 
    
         
    }
    public void move()
    {
      
      my1Y = my1Y+(int)(Math.random()*51)-25;
    }
    public void show()
    {
         noStroke();
         fill(  255, 0, 0);
         ellipse(150,my1Y, 5,5);
         ellipse(my1Y,150, 5,5);
    }
}
class JumboParticle extends NormalParticle
{
    public void show()
    {
      
        fill(0,255,0);
        ellipse((float)myX,(float)myY, 10,10);

     }
}