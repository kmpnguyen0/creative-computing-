float swapped = 0; 
PImage photo;

void setup()
{
 size(800, 630);
  background(0);
  smooth();
  photo = loadImage("mouth.png");
}

void draw()
{
 noStroke();
  fill(255);
  background(245, 229, 252); 
  
  //righteyeball
  float righteye = map(-200, mouseY, width, 0, -135 );
  ellipse(600, 200, 280, righteye);
  
  //rightpupil
  fill(145, 222, 206);
  float rightpupil = map(mouseX, 0, width, 550, 650);
  ellipse(rightpupil, 200, 90, 90);
  
  //rightiris
  fill(115, 211, 191);
  float rightiris = map(mouseX, 0, width, 550, 650);
  ellipse(rightiris, 200, 75, 75);
  
  //righteyelid
  stroke(245, 229, 252);
  strokeWeight(100);
  noFill();
  float righteyelid = map(-200, mouseY, width, 0, -135 );
  ellipse(600, 200, 280, righteyelid);
  
  stroke(245, 229, 252);
  noStroke(); 
  fill(255);
 
  //lefteyeball
  float lefteye = map(-150, mouseY, width, 0, -135 );
  ellipse(200, 200, 280, lefteye);
  
  //leftpupil
  fill(145, 222, 206);
  float leftpupil = map(mouseX, 0, width, 150, 250);
  ellipse(leftpupil, 200, 90, 90);
  
  //leftiris
  fill(115, 211, 191);
  float leftiris = map(mouseX, 0, width, 150, 250);
  ellipse(leftiris, 200, 75, 75);
  
  //lefteyelid
  stroke(245, 229, 252);
  strokeWeight(100);
  noFill();
  float lefteyelid = map(-200, mouseY, width, 0, -135 );
  ellipse(200, 200, 280, lefteyelid);
  
  if(mousePressed)
  {
    if(swapped < 1)
    {
      swapped = swapped + 0.01;
    }
  }else{
    if(swapped > 0)
    {
      swapped = swapped - 0.01;
    }
  }
  
  //text
  textAlign(CENTER);
  
  textSize(30);
  fill(255);
  text("hold mouse to swap", 400, 100);
  
  
  textSize(100);
  fill(255);
  text("S",lerp(width/2 - 85,width/2 + 85, swapped), height/1.25);
  text("w", lerp(width/2 - 25,width/2 + 25, swapped), height/1.25);
  text("a", lerp(width/2 + 35,width/2 - 35, swapped), height/1.25);
  text("p",lerp(width/2 + 90,width/2 - 90, swapped), height/1.25);
  
  if(swapped >= 1)
  {
  photo.resize(250, 170);
  image(photo,285,240);
  
   textSize(30);
  fill(255);
  text("you have been bless by this kitty <3 ", 400, 580);
  }
}