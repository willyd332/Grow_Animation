PVector[][] arr = new PVector[751][751];
PVector[][] colors = new PVector[751][751];
int[][] isAlive = new int[751][751];
int[][] newborn = new int[751][751];
int sNum = 5;
int count = 0;

int tardCount = 0;
int r = 0;
int b = 0;
int g = 0;
PVector red = new PVector (0,255,95);
PVector green = new PVector (0,0,0);
PVector blue = new PVector (233,0,255);
PVector white = new PVector (0,0);

public void settings() {
  size(750, 750);
}

void setup(){
 noStroke();
 frameRate(100);
 fill(0);
 for (int i = 0; i < width; i += 5){   
    for (int j = 0; j < height; j += 5){ /*/ change to 1 for black  background*/
        rect(i,j, 15,15);
        PVector p = new PVector(i,j);
        arr[i][j] = p;
        PVector c = new PVector(0,0,0);
        colors[i][j] = c;
        isAlive[i][j] = 0;
        newborn[i][j] = 0;
    }
  }
  
}
void draw(){
  for (int i = 0; i < width; i += 1){
    for (int j = 0; j < height; j += 1 ){
      if(isAlive[i][j] == 1){
      PVector z = colors[i][j];
      fill(z.x,z.y,z.z);
        rect(i,j, sNum,sNum);
        
      }
        
    }
  }
  
  if (keyPressed != true){
  //gradiant();
  grow();
  }
  
  


    for (int i = 0; i < width; i += sNum){
      for (int j = 0; j < height; j += sNum){
        newborn[i][j] = 0;
      }
    }
    /*
    if(a  + 5>=  0 &&a +  5<= 750 && b +   5 >=  0 && b + 5 <= 750 ){
    isAlive[a][b] = 1;
    colors[a][b]  = colors[a + 5] [b +5 ];
    } */
  }
void mouseDragged(){
  
    for (int i = 0; i < width; i += sNum){
      for (int j = 0; j < height; j += sNum ){
        if (mouseX - sNum < arr[i][j].x && mouseX > arr[i][j].x &&
        mouseY > arr[i][j].y &&  mouseY - sNum < arr[i][j].y ){
            isAlive[i][j] = 1;  
            if(count == 0){
            colors[i][j] = red;
            }else if( count > 1){
              colors[i][j] = green;
            } else{
              colors[i][j] = blue;
              
            }
            
        }
      }
    }
}
void gradiant(){
  //doesnt work
    if(red.x < 255 && red.y < 255 && red.z < 255){
    red.add(1,1,1);
    }

}
void mousePressed(){
  if (count < 2){
    count++;
  } else {
    count = 0;
   }
}
