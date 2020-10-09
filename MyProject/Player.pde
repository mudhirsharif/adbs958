PImage naruto;
PImage ichigo;
PImage zoro;
PImage bg;

class Player {
  float posY = 0;
  float velY = 0;
  float gravity = 0.5;
  float speed = 5;
  int size = 20;

  
  Player() {

  }
  
  void show() {
    fill(0);
    rectMode(CENTER);
    
    if( key ==' '){
    rect(50,height - 80 -(posY +size), size, (size*2));
    }
   
   if( key =='n'){
    image(naruto,0,height - 170 -(posY +size), size+100, (size*2)+100);
   }
   
   if( key =='i'){
    image(ichigo,0,height - 200 -(posY +size), size+100, (size*2)+100);
   }
   
   if( key =='z'){
   image(zoro,0,height - 200 -(posY +size), size+100, (size*2)+100);
   }
   
    
  }
  
  void move() {
    posY += velY;
    
    if (posY >0) {
      velY -= gravity;
    }
    
    else {
      velY = 0;
      posY = 0;
    }

  }
  
}
      
