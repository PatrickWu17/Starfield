Particle[] Bruh;
OddballParticle Buh;

void setup()
{
  background(0);
  size(500,500);
 Bruh = new Particle[500];
   for(int i = 0; i < Bruh.length; i++){
    Bruh[i] = new Particle();
    Bruh[i].Angle();
    Bruh[i].Speed();
   }
 Buh = new OddballParticle();

 
 
}
void draw()
{
 background(0);
 
 fill(255);
 for(int i = 0; i < Bruh.length; i++){
   Bruh[i].move();
   Bruh[i].show(); 
 }
 Buh.move();
 Buh.show();
 fill(0);
 ellipse(250,250,80,80);
 fill(255,0,0);
 ellipse(235,240,15,15);
 ellipse(265,240,15,15);
 ellipse(250,270,35,15);
 fill(250,0,0);

 
 
}
class Particle
{
  double myX,myY,myAngle,mySpeed;
  Particle(){
  myX = (int)(Math.random() * 250) - 250;
  myY = 250;
  }
  void Angle(){
    myAngle = Math.random()* 2 * Math.PI;
  }
  void Speed(){
      mySpeed = Math.random() * 10; 
  }
  void move(){
   myX = myX + Math.cos(myAngle) * mySpeed;
   myY = myY + Math.sin(myAngle) * mySpeed;
   if((myX > 500 || myX < 0) || (myY > 500 || myY < 0)){
      myX = 250;
      myY = 250;
      
   }
   
   
  }
  
  void show(){
     ellipse((float)myX,(float)myY,3,3);
     
   }
  }
  
  


class OddballParticle //inherits from Particle
{
  int myX,myY,num;
  OddballParticle(){
  myX = 250;
  myY = 250;
  }
  void move(){
   myX = myX + (int)(Math.random() * 11) - 5;
   myY = myY + (int)(Math.random() * 11) - 5;
  }
  void show(){
    ellipse(myX,myY,20,20);
  }
}


