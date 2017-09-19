size (500, 500);

int startX = 50; 
int startY = 100; 
int endX = 200;
int endY =100; 

int spacing = 10; 

int numberDraw = 0;
int totalLi
int  v = 5; 

void setup() {
  size (500, 500); 
background (127);
int startX = 50; 
int startY = 100; 
int endX = 200;
int endY =100; 

int spacing = 10; 

stroke(255); 
line(startX , startY , endX , endY );  
line(startX , startY + spacing, endX , endY ); 
spacing += 10;
}

void draw() {
   
  background(150);
  
  if (numberDraw == totalLine) {
    line(startX , startY + spacing, endX , endY + spacing ); 
spacing += 5;
println("spacing: " + spacing);
   
   numberDrawn +=1; 
  }
  else {
   spacing = 0;
    numberDrawn = 0;
   println("done drawing");
  }
  
}

  