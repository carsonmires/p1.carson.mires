boolean overOne = false;
boolean overTwo = false;
boolean overThree = false;
boolean overFour = false;
boolean overClose = false;
boolean overOpen = false;
boolean overAlarm = false;
color buttonColor = 209;
color buttonHighlight = 162;

void setup(){
  
  size(850,850);
  background(255);
}

void draw() {
  fill(50);
  rect(450,150,350,600,25);

  update(mouseX, mouseY);
  
  if (overOne) {
    fill(buttonHighlight);
  } else {
    fill(buttonColor);
  }
  stroke(0);
  rect(510, 205, 110, 110,15);


  
  if (overTwo) {
    fill(buttonHighlight);
  } else {
    fill(buttonColor);
  }
  stroke(0);
  rect(645, 205, 110, 110,15);
  
  if (overThree) {
    fill(buttonHighlight);
  } else {
    fill(buttonColor);
  }
  stroke(0);
  rect(510, 325, 110, 110,15);
  
  if (overFour) {
    fill(buttonHighlight);
  } else {
    fill(buttonColor);
  }
  stroke(0);
  rect(645, 325, 110, 110,15);
  
  
  if (overClose) {
    fill(buttonHighlight);
  } else {
    fill(buttonColor);
  }
  stroke(0);
  rect(510, 475, 110, 110,15);
  
  if (overOpen) {
    fill(buttonHighlight);
  } else {
    fill(buttonColor);
  }
  stroke(0);
  rect(645, 475, 110, 110,15);
  
  if (overAlarm) {
    fill(buttonHighlight);
  } else {
    fill(buttonColor);
  }
  stroke(0);
  rect(582, 615, 110, 110,15);
  
  fill(0);
  textSize(44);
  text("*1", 520, 395);
  text("2", 675, 395);
  text("3", 535, 280);
  text("4", 675, 280);
  
  textSize(32);
  text("ALARM", 593, 670);
  
  
  fill(0);
  triangle(695,545,695,485,660,515);
  triangle(705,545,705,485,740,515);
  
  triangle(530,545,530,485,565,515);
  triangle(600,545,600,485,565,515);
 
 fill(0);
 //main braille
 circle(570,390,2);
 circle(570,380,2);
 circle(575,380,2);
 circle(585,380,2);
 circle(595,390,2);
 circle(600,385,2);
 
 //two braille
 
 circle(710,390,2);
 circle(715,390,2);
 circle(715,385,2);
 circle(715,380,2);
 circle(725,385,2);
 circle(725,380,2);
 
 //three braille
 
 circle(570,280,2);
 circle(575,280,2);
 circle(575,275,2);
 circle(575,270,2);
 circle(585,270,2);
 circle(590,270,2);
 
 //four braille
 
 circle(710,280,2);
 circle(715,280,2);
 circle(715,275,2);
 circle(715,270,2);
 circle(725,270,2);
 circle(730,270,2);
 circle(730,275,2);
 
 //open braille
 
 circle(680,570,2);
 circle(685,565,2);
 circle(680,560,2);
 circle(695,570,2);
 circle(695,565,2);
 circle(695,560,2);
 circle(700,560,2);
 circle(710,565,2);
 circle(715,570,2);
 
 //close braille
 
 circle(540,560,2);
 circle(545,560,2);
 circle(555,570,2);
 circle(555,565,2);
 circle(555,560,2);
 circle(565,560,2);
 circle(570,565,2);
 circle(565,570,2);
 circle(580,570,2);
 circle(580,565,2);
 circle(585,560,2);
 circle(595,560,2);
 circle(600,565,2);
 
 
 //alarm braille
 
 circle(615,690,2);
 circle(625,690,2);
 circle(625,695,2);
 circle(625,700,2);
 circle(635,700,2);
 circle(640,695,2);
 circle(640,690,2);
 circle(650,700,2);
 circle(650,690,2);
 circle(655,690,2);
 
 
}

void update(int x, int y) {
    if (overButton(510, 205, 110, 110) ) {
    overOne = true;
    overTwo = false;
    overThree = false;
    overFour = false;
    overOpen = false;
    overClose = false;
    overAlarm = false;
  }
  
  else if (overButton(645, 205, 110, 110) ) {
    overOne = false;
    overTwo = true;
    overThree = false;
    overFour = false;
    overOpen = false;
    overClose = false;
    overAlarm = false;
  } 
  
   else if (overButton(510, 325, 110, 110) ) {
    overOne = false;
    overTwo = false;
    overThree = true;
    overFour = false;
    overOpen = false;
    overClose = false;
    overAlarm = false;
  } 
  
   else if (overButton(645, 325, 110, 110) ) {
    overOne = false;
    overTwo = false;
    overThree = false;
    overFour = true;
    overOpen = false;
    overClose = false;
    overAlarm = false;
  } 
  
  else if (overButton(510, 475, 110, 110) ) {
    overOne = false;
    overTwo = false;
    overThree = false;
    overFour = false;
    overOpen = false;
    overClose = true;
    overAlarm = false;
  } 
  
  else if (overButton(645, 475, 110, 110) ) {
    overOne = false;
    overTwo = false;
    overThree = false;
    overFour = false;
    overOpen = true;
    overClose = false;
    overAlarm = false;
  } 
  
  else if (overButton(582, 615, 110, 110) ) {
    overOne = false;
    overTwo = false;
    overThree = false;
    overFour = false;
    overOpen = false;
    overClose = false;
    overAlarm = true;
  } 
  else {
    overOne = overTwo = overThree = overFour = overOpen = overClose = overAlarm = false;
  }
}
/*
void mousePressed() {
  if (circleOver) {
    currentColor = circleColor;
  }
  if (rectOver) {
    currentColor = rectColor;
  }
}
*/

boolean overButton(int x, int y, int width, int height)  {
  if (mouseX >= x && mouseX <= x+width && 
      mouseY >= y && mouseY <= y+height) {
    return true;
  } else {
    return false;
  }
}
