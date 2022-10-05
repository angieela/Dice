void setup()
  {
      noLoop();
      size (400,400);  
  }
void draw()
  {
     background(255);
     int sum = 0;
     for (int y = 30; y < 400; y+=21)
        for (int x = 0; x < 400; x+=21){         
          Die bob = new Die(x,y);
          bob.show();
          sum = sum + bob.myDots;
        }
     fill(0);
     text("Total dots: "+ sum, 170,15);
  }
void mousePressed()
  {
      redraw();
  }
class Die //models one single dice cube
  {
      int myX, myY, myDots;
      Die(int x, int y) //constructor
      {
        myX = x;
        myY = y;
        roll();
      }
void roll()
   {
      myDots =(int)(Math.random()*6)+1;
   }
void show()
      {
          fill(70,30,40);
          rect(myX,myY,20,20);
          fill(200);

          if (myDots == 1){
            ellipse(myX+10,myY+10,4,4);

          }else if (myDots == 2){
            ellipse(myX+4, myY+10,4,4);
            ellipse(myX+16, myY+10,4,4);

          }else if (myDots == 3){
            ellipse(myX+10, myY+4,4,4);
            ellipse(myX+4, myY+16,4,4);
            ellipse(myX+16, myY+16,4,4);

          }else if (myDots == 4){
            ellipse(myX+16, myY+4,4,4);
            ellipse(myX+4, myY+4,4,4);
            ellipse(myX+4, myY+16,4,4);
            ellipse(myX+16, myY+16,4,4);

          }else if (myDots == 5){
            ellipse(myX+16, myY+4,4,4);
            ellipse(myX+4, myY+4,4,4);
            ellipse(myX+4, myY+16,4,4);
            ellipse(myX+16, myY+16,4,4);
            ellipse(myX+10, myY+10,4,4);
 
           }else if (myDots == 6){
            ellipse(myX+16, myY+4,4,4);
            ellipse(myX+4, myY+4,4,4);
            ellipse(myX+4, myY+16,4,4);
            ellipse(myX+16, myY+16,4,4);
            ellipse(myX+4, myY+10,4,4);
            ellipse(myX+16, myY+10,4,4);

           }

      }
          
  }
