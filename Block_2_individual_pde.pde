import processing.serial.*;
import cc.arduino.*;
Arduino arduino;

public void setup() {
  size(500, 500);
  arduino = new Arduino(this, Arduino.list()[0], 57600); //change the [0] to a [1] or [2] etc. if your program doesn't work
}

public void draw() {
  background(225); 
  int y = (arduino.analogRead(5));
  int ymax = 150; // max y value 
  int x= 20; // change x position of animal 
  System.out.println(y);
  fill(100,255,30); 
    if (y<150) {
         ellipse(x+230, 200+y, 250+y*4/3, 210);//face 
         ellipse(x+160 - y/3 , 100+y, 40+y/3, 30);// outer ear
         ellipse(x+223 + y/3 , 85+y, 45+y/3, 30);  // outer ear
         fill(30,215,40); 
         ellipse(x+160-y/3, 100+y, 20+y/3, 15); // inner ear 
         ellipse(x+223+y/3, 85+y, 24+y/3, 15); // inner ear 
         fill(0,0,0); 
         fill(100,220,30); 
         ellipse(x+218, 210+y, 118+y/2, 90);// nose
         fill(255,255,255);
         ellipse(x+309+y/2, 189+y, 60+y/3, 60);// eyeball
         ellipse(x+138-y/2, 189+y, 60+y/3, 60);// eyeball
         fill(0,0,0); 
         ellipse(x+195-y/7,209+y,30+y/5,45); // nostril
         ellipse(x+240+y/7,209+y,30+y/5,45); // nostril 
         ellipse(x+125-y/2, 192+y, 10+y/3, 10); // pupil
         ellipse(x+322+y/2, 186+y, 10+y/3, 10);// pupil 
    } else {
      fill(100,255,30); 
    ellipse(x+230, 200+ymax, 250+ymax*4/3, 210);
    ellipse(x+160-ymax/3, 100+ymax, 40+ymax/3, 30);
    ellipse(x+223 + ymax/3, 85+ymax, 45+ymax/3, 30);  
    fill(30,215,40); 
    ellipse(x+160-ymax/3, 100+ymax, 20+ymax/3, 15);
    ellipse(x+223+ymax/3, 85+ymax, 24+ymax/3, 15); 
    fill(0,0,0); 
    fill(100,220,30); 
    ellipse(x+218, 210+ymax, 118+ymax/2, 90);
    fill(255,255,255);
    ellipse(x+309+ymax/2, 189+ymax, 60 +ymax/3, 60);
    ellipse(x+138-ymax/2, 189+ymax, 60 + ymax/3, 60);
    fill(0,0,0); 
    ellipse(x+195-ymax/7,209+ymax,30+ymax/5,45); 
    ellipse(x+240+ymax/7,209+ymax,30+ymax/5,45); 
    ellipse(x+125-ymax/2, 192+ymax, 10+ymax/3, 10);
    ellipse(x+322+ymax/2, 186+ymax, 10+ymax/3, 10);
  
} 
   
} 
