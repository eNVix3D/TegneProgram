//Nicklas 2i
float circleColor = 0;
float Size = 50;

boolean ColorEnd = false;

void setup(){
  size(1000,1000);
  background(255);
}

void draw(){
  
  frameRate(150);
  //clear drawing board with spacebar
     if(keyPressed && key == ' '){
    clear(); 
    background(255);
   }
   
   //set drawing size
   if(keyPressed && key == '1'){
    Size = 10;
   }
   
      if(keyPressed && key == '2'){
    Size = 50;
   }
   
      if(keyPressed && key == '3'){
    Size = 75;
   }
   
   stroke(0);
   fill(255);
   rect(80,50,300,80);
   fill(0);
   textSize(50); 
   text("size: "+Size,100,100);
}

void mouseDragged(){
  noStroke();
  fill(circleColor);
  circle(mouseX,mouseY,Size) ;
  
  
  //Way too complicated gradient
  if(!ColorEnd){
  circleColor ++;
  }
  
  if(circleColor >= 255){
   ColorEnd = true; 
  }
  
  if(ColorEnd){
    circleColor --;
  }
  
  if(circleColor <= 0){
   ColorEnd = false; 
  }
   
}
