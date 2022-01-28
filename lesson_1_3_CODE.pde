color orange = color(251, 120, 6);
color mint = color(58, 186, 137);
color blue = color(89, 134, 219);
color gold = color(234, 175, 47);
color cLine = color (255);

float outsideMargin = 20;
float insideMargin = 10;
float w = 640 - 2*outsideMargin;
float h = 640 - 2*outsideMargin;
float rW = (w - insideMargin)/2;
float rH = (h - insideMargin)/2;
float rHmint = rH;
float minLetterWidth = 40;
float minLetterHeight = 40;
float lWeight = 5;


void setup() { 
  
  size(640, 640);
  pixelDensity(2);

}

void draw() { 
  
  background(255); 
//C  
  noStroke(); 
  fill(orange);
  rect(outsideMargin, outsideMargin, rW, rH);
  
  stroke(cLine);
  strokeWeight(lWeight);
  //line gorizontal
  line(outsideMargin + rW/2, outsideMargin + rH/2, outsideMargin + rW, outsideMargin + rH/2);
  
  //line vertical
  line(outsideMargin + rW/2, outsideMargin + rH/2 - 0.2*rH, outsideMargin + rW/2, outsideMargin + rH/2 + 0.2*rH);

//O   
  noStroke();
  fill(mint);
  ellipseMode(CORNER); //ancor point
  ellipse(outsideMargin + rW + insideMargin, outsideMargin, w - insideMargin - rW, rHmint);
  
  stroke(cLine);
  strokeWeight(lWeight);
  line(outsideMargin + rW/2 + insideMargin/2 + w/2, outsideMargin + 0.15*rHmint, outsideMargin + rW/2 + insideMargin/2 + w/2, outsideMargin + 0.85*rHmint);

//D   
  noStroke();
  fill(blue);
  rect(outsideMargin, outsideMargin + rH + insideMargin, rW, h - rH - insideMargin, 0, (h - rH - insideMargin)/2, (h - rH - insideMargin)/2, 0);
  
  stroke(cLine);
  strokeWeight(lWeight);
  line(outsideMargin + rW/2, outsideMargin + rH + insideMargin + 0.15*(w - rH - insideMargin), outsideMargin + rW/2, outsideMargin + rH + insideMargin + 0.85*(w - rH - insideMargin));

//E 
  noStroke();
  fill(gold);
  rect(outsideMargin + rW + insideMargin, outsideMargin + rHmint + insideMargin, w - insideMargin - rW, h - rHmint - insideMargin);
  
  stroke(cLine);
  strokeWeight(lWeight);
  
  //line top
  line(outsideMargin + rW/2 + insideMargin/2 + w/2, outsideMargin + rHmint + insideMargin + (w - insideMargin - rHmint)/3, outsideMargin + rW/2 + insideMargin/2 + w/2 + w/2 - rW/2 - insideMargin/2, outsideMargin + rHmint + insideMargin + (w - insideMargin - rHmint)/3);
  
  //line bottom
  line(outsideMargin + rW/2 + insideMargin/2 + w/2, outsideMargin + rHmint + insideMargin + (w - insideMargin - rHmint)/3*2, outsideMargin + rW/2 + insideMargin/2 + w/2 + w/2 - rW/2 - insideMargin/2, outsideMargin + rHmint + insideMargin + (w - insideMargin - rHmint)/3*2);

}
 
 void mousePressed() { 
     rW = random(minLetterWidth, w - insideMargin - minLetterWidth);
     rH = random(minLetterHeight, h - insideMargin - minLetterHeight);
     rHmint = random(minLetterHeight, h - insideMargin - minLetterHeight);
 }
