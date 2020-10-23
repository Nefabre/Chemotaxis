 Bacteria[] sam = new Bacteria[50];//declare bacteria variables here   
 int x=10;
 void setup()   
 {     
   size(400, 400);
   for (int i=0; i< sam.length; i++)
   {
     sam[i] = new Bacteria();
   }//initialize bacteria variables here   
 }   
 void draw()   
 {
   {
   background(0,0,100);
   if (mouseX > x)
   x=x+ (int)(Math.random()*5)-1;
   else
   x= x+(int)(Math.random()*5)-3;
 }
   for(int i=0; i< sam.length; i++)
   {
     sam[i].show();
     sam[i].walk();
   }//move and show the bacteria   
 }  
 class Bacteria   
 {     
   int myColor;
   int mySize;
   int myX;
   float myY;
   float mySpeed;
   Bacteria()
   {
     myColor= color(225,225,0);
   //myColor= color((int)(Math.random() *256), (int)(Math.random() *256), (int)(Math.random() *256), (int)(Math.random()*256));
   mySize = (int)(10);
   mySpeed = mySize/100.0;
   myX= (int)(Math.random()*400);
   myY= (int)(Math.random()*400);//lots of java!   
   }
   void walk()
   {
     myX= myX+ (int)(Math.random()*7)-3;
     myY =myY+ (int)(Math.random()*7)-3;
 }    
 void show()
 {
   fill(myColor);
   stroke(myColor);
   ellipse(myX,myY, mySize,mySize);
 }
 }
