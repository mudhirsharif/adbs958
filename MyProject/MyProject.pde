import processing.sound.*; 

SoundFile jumpSound;
SoundFile bleachOST;

Player player;
void setup() {
  size(800,400);
  player = new Player();
  naruto = loadImage("NarutoRun.png");
  ichigo = loadImage("IchigoRun.png");
  zoro = loadImage("ZoroRun.png");
  bg = loadImage("NarutoBg.png");
  jumpSound = new SoundFile(this,"NarutoJumpCut.mp3");
  bleachOST = new SoundFile(this,"BleachB13A.mp3");
  bleachOST.amp(0.3);
  bleachOST.play();
}

void draw() {
  bg.resize(800,400);
  background(bg);
  stroke(0);
  strokeWeight(4);
  line(0,height - 80, width, height - 80);
  player.move();
  player.show();
  
}


void keyPressed() {
  switch(key) {
    case ' ':
    case 'n':
    case 'i':
    case'z':
    if (player.posY ==0) {
      player.velY = 10;
      jumpSound.play();
    }
    
    
  }
  
  
}
