PImage tex;
PImage bg;

void setup(){
  size(1280,720, P3D);
  tex = loadImage("tex.png");
  bg = loadImage("background.png");
}
void draw(){
  background(255);
  
  image(bg,0,0);
  
  pushMatrix();
  translate(0,0);
        scale(128);
        strokeWeight(0);
        noStroke();
        noFill();

//        tint(255,255,255,opacity);
      //  tint(255,255,255);

int col = (int)(frameCount/(float(mouseX)/float(width)*20.0+1))%3;
int row = 0;
int myTextureSize = 256;

        //tint(0xFF3300);
        beginShape(QUADS);
        texture(tex);

//        vertex(-1, -1,  frame*myTextureSize,myTextureSize);
//        vertex( 1, -1,  myTextureSize+frame*myTextureSize,myTextureSize);
//        vertex( 1,  1,  myTextureSize+frame*myTextureSize,myTextureSize*2);
//        vertex(-1,  1,  frame*myTextureSize,myTextureSize*2);
        vertex(0, 0,  col*myTextureSize,row*myTextureSize);
        vertex( 1, 0,  myTextureSize+col*myTextureSize,0+row*myTextureSize);
        vertex( 1,  1,  myTextureSize+col*myTextureSize,myTextureSize+row*myTextureSize);
        vertex(0,  1,  col*myTextureSize,myTextureSize+row*myTextureSize);

        endShape();
        popMatrix();


row = 1;
int xPos = (int)(frameCount*(float)mouseY/(float)height*20.0)%width;
pushMatrix();
        
        translate(xPos,128);
        scale(128);
        strokeWeight(0);
        noStroke();
        noFill();

//        tint(255,255,255,opacity);
      //  tint(255,255,255);

        //tint(0xFF3300);
        beginShape(QUADS);
        texture(tex);

//        vertex(-1, -1,  frame*myTextureSize,myTextureSize);
//        vertex( 1, -1,  myTextureSize+frame*myTextureSize,myTextureSize);
//        vertex( 1,  1,  myTextureSize+frame*myTextureSize,myTextureSize*2);
//        vertex(-1,  1,  frame*myTextureSize,myTextureSize*2);
        vertex(0, 0,  col*myTextureSize,row*myTextureSize);
        vertex( 1, 0,  myTextureSize+col*myTextureSize,0+row*myTextureSize);
        vertex( 1,  1,  myTextureSize+col*myTextureSize,myTextureSize+row*myTextureSize);
        vertex(0,  1,  col*myTextureSize,myTextureSize+row*myTextureSize);

        endShape();
        popMatrix();
        
        row = 2;
xPos = 0;
pushMatrix();
        
        translate(xPos,256);
        scale(256);
        strokeWeight(0);
        noStroke();
        noFill();

//        tint(255,255,255,opacity);
      //  tint(255,255,255);

        //tint(0xFF3300);
        beginShape(QUADS);
        texture(tex);

//        vertex(-1, -1,  frame*myTextureSize,myTextureSize);
//        vertex( 1, -1,  myTextureSize+frame*myTextureSize,myTextureSize);
//        vertex( 1,  1,  myTextureSize+frame*myTextureSize,myTextureSize*2);
//        vertex(-1,  1,  frame*myTextureSize,myTextureSize*2);
        vertex(0, 0,  col*myTextureSize,row*myTextureSize);
        vertex( 1, 0,  myTextureSize+col*myTextureSize,0+row*myTextureSize);
        vertex( 1,  1,  myTextureSize+col*myTextureSize,myTextureSize+row*myTextureSize);
        vertex(0,  1,  col*myTextureSize,myTextureSize+row*myTextureSize);

        endShape();
        popMatrix();


}

void mousePressed(){
  println("speed: " + (int)(frameCount/(float(mouseX)/float(width)*20.0+1))%3);
  println("runspeed: " + (int)(frameCount/(float(mouseX)/float(width)*20.0+1))%3) ;
}