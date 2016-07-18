void setup(){
  size(640, 640);
  background(0, 0, 255);
}
void draw(){
  if (mousePressed){
    fill(255, 0, 0);
  }
  else{
    fill(mouseX, mouseY, mouseX);
  }
  ellipse(100, 100, 100, 100);
  line(50, 50, 150, 150);
  line(299, 350, 50, 150);
  triangle(30, 75, 58, 86, 75, 80);
  text("Max", 610, 610);
}
