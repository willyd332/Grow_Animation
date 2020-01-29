 void grow(){
    
   
    for (int i = 0; i < width; i += sNum){
    for (int j = 0; j < height; j += sNum ){
      
        if(isAlive[i][j]  ==  1){
          
            if(i - sNum - sNum >=  0 && i + sNum + sNum <= 750 && j -sNum - sNum >=  0 
            && j + sNum + sNum <= 750 ){
               if(newborn[i + sNum][j]  == 0 ){ 
               float choo = random(0,7);
               int choose = int(choo);
               
                 if(choose == 0){
                   //Right ( works)
                   if (colors[i][j] == blue && colors[i - sNum][j] == green
                   || colors[i][j] == green && colors[i - sNum][j] == red
                   ||  colors[i][j] == red && colors[i - sNum][j] == blue
                   || colors[i - sNum][j] != red
                   && colors[i - sNum][j] != green 
                   && colors[i - sNum][j] != blue
                   
                   ){
                   isAlive[i - sNum][j]  = 1;
                   newborn[i + sNum + sNum][j]  = 1;
                   
                   colors[i - sNum][j]  = colors[i][j];
                   }
                 }else if(choose == 1){
                   //North east (bugged?)
                  if (colors[i][j] == blue && colors[i + sNum][j - sNum] == green
                   || colors[i][j] == green && colors[i + sNum][j - sNum] == red
                   ||  colors[i][j] == red && colors[i + sNum][j - sNum] == blue
                   || colors[i + sNum][j - sNum] != red
                   && colors[i + sNum][j - sNum] != blue
                  && colors[i + sNum][j - sNum] != green 
                   
                   ){
                   isAlive[i + sNum][j - sNum]  = 1;
                   newborn[i + sNum + sNum][j - sNum - sNum]  = 1;
                   colors[i + sNum][j - sNum]  = colors[i][j];
                   }
                 }else if (choose == 2){
                   //south eastt (bugged?)
                   if (colors[i][j] == blue && colors[i + sNum][j + sNum] == green
                   || colors[i][j] == green && colors[i + sNum][j + sNum] == red
                   ||  colors[i][j] == red && colors[i + sNum][j + sNum] == blue
                   || colors[i + sNum][j + sNum] != red
                   && colors[i + sNum][j + sNum] != green
                   && colors[i + sNum][j + sNum] != blue
                   ){
                   isAlive[i + sNum][j + sNum]  = 1;
                  // newborn[i + sNum + sNum][j + sNum + sNum]  = 1;
                   colors[i + sNum][j + sNum]  = colors[i][j];
                   }
                 }else if (choose == 3){
                   //south west (works)
                   if (colors[i][j] == blue && colors[i - sNum] [j + sNum] == green
                   || colors[i][j] == green && colors[i - sNum] [j + sNum] == red
                   ||  colors[i][j] == red && colors[i - sNum] [j + sNum] == blue
                   || colors[i - sNum] [j + sNum] != red
                   && colors[i - sNum] [j + sNum] != green
                   && colors[i - sNum] [j + sNum] != blue
                   ){
                   isAlive[i - sNum][j + sNum]  = 1;
                   colors[i - sNum] [j + sNum]  = colors[i][j];
                   }
                 }else if (choose == 4){
                   //north works
                   if (colors[i][j] == blue && colors[i][j - sNum]== green
                   || colors[i][j] == green && colors[i][j - sNum] == red
                   ||  colors[i][j] == red && colors[i][j - sNum]== blue
                   || colors[i][j - sNum]!= red
                   && colors[i][j - sNum]!= green
                   && colors[i][j - sNum]!= blue
                   
                   ){
                   isAlive[i][j - sNum]  = 1;
                   newborn[i][j - sNum - sNum]  = 1;
                   colors[i][j - sNum]  = colors[i][j];
                   }
                 }else if (choose == 5){
                   //south ( bugged)
                   if (colors[i][j] == blue && colors[i][j + sNum]== green
                   || colors[i][j] == green && colors[i][j + sNum] == red
                   ||  colors[i][j] == red && colors[i][j + sNum]== blue
                   || colors[i][j + sNum]!= red
                   && colors[i][j + sNum]!= blue
                   && colors[i][j + sNum]!= green
                   
                   ){
                   isAlive[i][j + sNum]  = 1;
                   newborn[i][j + sNum + sNum]  = 1;
                   colors[i][j + sNum]  = colors[i][j];
                   }
                 }else if (choose == 6){
                   //west 
                   if (colors[i][j] == blue && colors[i - sNum][j] == green
                   || colors[i][j] == green && colors[i - sNum][j] == red
                   ||  colors[i][j] == red && colors[i - sNum][j] == blue
                   || colors[i - sNum][j] != red
                   && colors[i - sNum][j] != green
                   && colors[i - sNum][j] != blue
                   ){
                   isAlive[i - sNum][j]  = 1;
                   colors[i - sNum][j]  = colors[i][j];
                   }
                 }else if (choose == 7){
                   //north west 
                   if (colors[i][j] == blue && colors[i - sNum][j - sNum] == green
                   || colors[i][j] == green && colors[i - sNum][j - sNum] == red
                   ||  colors[i][j] == red && colors[i - sNum][j - sNum] == blue
                   ||colors[i - sNum][j - sNum] != red
                   &&colors[i - sNum][j - sNum] != green
                   &&colors[i - sNum][j - sNum] != blue
                   ){
                   isAlive[i - sNum][j - sNum]  = 1;
                   colors[i - sNum][j - sNum]  = colors[i][j];
                   }
                 }
                 
                 
               }
               
            }
            
            
       }
       
      }
     
    }
 }
