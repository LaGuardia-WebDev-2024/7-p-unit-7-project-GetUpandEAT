//🟢Setup Procedure - Runs Once to Set The Canvas
void setup() {
    size(400, 400); 
}

//🎯Variable Declarations Go Here
var fireworkX = 20;
var R = 168;
var B = 260;
var Y = 236;
var sy = 30;


//🟢Draw Procedure - Runs on Repeat
draw = function(){
 
  background(255,255,255,0);
  
  //firework 1
  stroke(250,100,100);
  fill(250,100,100);
  ellipse(202,R,100,100);
  
  //firework 2
  fill(100,150,250);
  stroke(100,150,250);
  ellipse(300,B,60,60);
  
  //firework 3
  fill(250,250,100);
  stroke(250,250,100);
  ellipse(74,Y,sy,sy);
  fill(250,250,250);
  stroke(250,250,250);
  

   if(mousePressed){
    showXYPositions();
    
  }
  
  //🎯Animation Code Goes Here
  rect(fireworkX, 15, 10, 10);
  
  fireworkX = fireworkX + 1;
  R -= 1;
  B -= 3;
  Y -= 2;
  sy += 2;
 
}

//🟡Extra FUN Features Ms. Hall Added
//Proceed with Caution (and Curiosity!)

showXYPositions = function(){
    fill(255,255,255)
    rect(270,300,150,100)
    fill(0,0,0)
    textSize(30)
    text("x = " + mouseX + "\ny = " +mouseY, 290, 350)
    fill(255,0,255)
    ellipse(mouseX, mouseY, 10, 10);
    fill(255,255,255)
}
