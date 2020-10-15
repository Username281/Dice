
  int dieVal = 5;
  int i = 0;
  int j = 0;
  void setup()
  {
      noLoop();
      size(400,300);
  }
  void draw()
  {
    background(0);
    for (i = 0; i < 2; i++) {
       int y = 50 + (i* 100);
       for (j = 0; j < 3; j++) {
         int x = 50 + (j * 100);
         Die bob = new Die(x, y);
         bob.show();
          
       }
    }

  }
  void mousePressed()
  {
      redraw();
      dieVal = (int) (Math.random()*6+1);
      
  }
  class Die //models one single dice cube
  {
      int myX;
      int myY;
      
      Die(int x, int y)
      {
        roll();
        myX = x;
        myY = y;
        
      }
      void roll()
      {
          dieVal = (int) (Math.random()*6+1);
      }
      void show()
      { 
        if (dieVal == 1) {
          noFill();
          stroke(255);
          strokeWeight(2);
          rect(myX,myY,50,50,7);
          fill(255);
          ellipse(myX+25, myY+25, 5, 5);
          
        }
        if (dieVal == 2) {
          noFill();
          stroke(255);
          strokeWeight(2);
          rect(myX,myY,50,50,7);
          fill(255);
          ellipse(myX+17, myY+35, 5, 5);
          ellipse(myX+32, myY+15, 5, 5);
        }
        if (dieVal == 3) {
          noFill();
          stroke(255);
          strokeWeight(2);
          rect(myX,myY,50,50,7);
          fill(255);
          ellipse(myX+15, myY+15, 5, 5);
          ellipse(myX+25, myY+25, 5, 5);
          ellipse(myX+35, myY+35, 5, 5);
        }
        if (dieVal == 4) {
          noFill();
          stroke(255);
          strokeWeight(2);
          rect(myX,myY,50,50,7);
          fill(255);
          ellipse(myX+15, myY+15, 5, 5);
          ellipse(myX+35, myY+35, 5, 5);
          ellipse(myX+35, myY+15, 5, 5);
          ellipse(myX+15, myY+35, 5, 5);
        }
        if (dieVal == 5) {
          noFill();
          stroke(255);
          strokeWeight(2);
          rect(myX,myY,50,50,7);
          fill(255);
          ellipse(myX+15, myY+15, 5, 5);
          ellipse(myX+35, myY+35, 5, 5);
          ellipse(myX+35, myY+15, 5, 5);
          ellipse(myX+15, myY+35, 5, 5);
          ellipse(myX+25, myY+25, 5, 5);
          
        }
        if (dieVal == 6) {
          noFill();
          stroke(255);
          strokeWeight(2);
          rect(myX,myY,50,50,7);
          fill(255);
          ellipse(myX+15, myY+25, 5, 5);
          ellipse(myX+35, myY+25, 5, 5);
          ellipse(myX+15, myY+15, 5, 5);
          ellipse(myX+35, myY+15, 5, 5);
          ellipse(myX+15, myY+35, 5, 5);
          ellipse(myX+35, myY+35, 5, 5);
        }
      }
  }
