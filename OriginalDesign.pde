int x = 0;
void setup(){
  size(800, 600);
}
void draw(){
  time("day");
  sun(x);
  x--;
  if(x < -800){
  time("night");
  }
  cloud(0);
  cloud(200);
  mountain(100);
  landscape();
  trees();
  leaves();
}
void time(String dayOrNight){
 if( dayOrNight == "day"){
 background(5, 150 , 200);
 stars();
 }
 else if(dayOrNight == "night"){
   background(0);
 }
}
void cloud(int y){
fill(200 , 100);
noStroke();
int x = 0;
while(x < 80){
ellipse(100+ x + y, 100, 50 , 50);
x++;
}
}
void mountain(int width){
  fill(0);
  beginShape();
  curveVertex(10 + width, 10);
  curveVertex(10 + width, 10);
  curveVertex(10 + width, 300);
  curveVertex(10 + width, 200);
  curveVertex(10 + width, 300);
  curveVertex(10 + width, 300);
  endShape(CLOSE);
}
void landscape(){
fill(0, 250, 0);
bezier(-100, 650, 400 , 600 , 800, 450, 1000, 760);
}
void trees(){
fill(128,30,0);
rect(50, 500 ,50 , 200);
}
void leaves(){
  fill(0, 100 , 0 , 200);
ellipse(75, 425,200, 200);
 fill(0, 200, 0 , 200);
ellipse(100, 400,50, 50);
}
void sun(int x){
fill(255,255,0);
ellipse(700 + x, 100, 100 , 100 );
}
void stars(){
  fill(100 , 100);
vertex(30, 36);
vertex(33 , 33);
vertex(27, 33);
vertex(30, 30);
}

