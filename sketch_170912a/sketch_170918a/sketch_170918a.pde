float r = 0;
PImage photo;

void setup() {
  size(800, 800);
  background(0,0,0,255);
  photo = loadImage("tumblr_n4ygtnenTE1snc5kxo1_400.gif");
  photo.resize(80,100);

  
  noStroke();
  smooth();
}

void draw() {
  fill(0,10); 
  rect(0,0,width*3,height*3); 
  fill(255);
  noStroke(); 
  ellipse(random(width),random(height),3,3);
 

  fill(255);
  translate(mouseX, mouseY);
  image(photo, 0, 0);
  
  r = r + 0.09 ;
  
  
}