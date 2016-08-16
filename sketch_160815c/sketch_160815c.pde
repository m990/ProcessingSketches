PImage pictureOfRecord;
import ddf.minim.*;     //at the very top of your sketch
  Minim minim;        //as a member variable
  AudioPlayer song;      //as a member variable
  int angle = 50;


void setup(){
  pictureOfRecord= loadImage("rush.jpg");
  size(400, 400);
  
  minim = new Minim(this);    //in the setup method
  song = minim.loadFile("Rush - The Main Monkey Business.mp3", 512);//in the setup method

}
void draw(){
  rotateImage(pictureOfRecord, angle);
 image(pictureOfRecord, 0, 0); 
 if (mousePressed){
   song.play();
   angle++;
 }
 else{
   song.pause();
 }
}
void rotateImage(PImage image, int amountToRotate) {
      translate(width/2, height/2);
      rotate(amountToRotate*TWO_PI/360);                              
      translate(-image.width/2, -image.height/2);
}
