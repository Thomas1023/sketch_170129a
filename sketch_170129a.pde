int y=390;
int x=200;
Car.add(
void setup(){
  size(400,400);
  
}
void draw(){
  background(200,200,200);
  fill(20,200,20);
  ellipse(x,y,10,10);
}
void keyPressed()
{
  if(key == CODED){
      if(keyCode == UP && boundsYT())
      {
      y-=10;
      }
      else if(keyCode == DOWN && boundsYB())
      {
        y+=10;
      }
      else if(keyCode == RIGHT && boundsXR())
      {
       x+=10;
      }
      else if(keyCode == LEFT && boundsXL())
      {
        x-=10;
      }
   }
}
boolean boundsXL(){
  if(x<=0){
    return false;
  }else{
  return true;
  }
}
boolean boundsXR(){
  if(x>=400){
    return false;
  }else{
  return true;
  }
}
boolean boundsYT(){
  if(y<=0){
    return false;
  }else{
  return true;
  }
}
boolean boundsYB(){
  if(y>=400){
    return false;
  }else{
  return true;
  }
}
class Car{
  int carx;
  int cary;
  int carSize;
  int carSpeed;
  Car(int carx,int cary, int carSize, int carSpeed){
this.carx =carx;
this.cary =cary;
this.carSize =carSize;
this.carSpeed =carSpeed;
  }
  void display() 
  {
    fill(0,255,0);
    rect(carx, cary,carSize, 50);
  }
}