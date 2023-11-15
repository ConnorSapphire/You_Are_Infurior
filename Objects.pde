//CREATE A NEW CLASS FOR MINIGAME OBJECTS
class Object {
  //DECLARE VARIABLES FOR OBJECT
 int x; //X-COORDINATE
 int y; //Y-COORDINATE
 int yspeed; //CHANGE IN Y-COORDINATE
 int yaccel; //CHANGE IN Y-SPEED
 int type; //OBJECT TYPE 0 = COIN, 1 = FISH, 2 = BOMB
 boolean HIT = false; //CHECK IF OBJECT HAS BEEN HIT BY CURSOR
 //--------------------------------------------------------------------------------------------------------------------------------------------------//
 //CREATE TEMPLATE FOR OBJECTS
 Object(int tempx, int tempy, int tempyspeed, int tempyaccel, int temptype) {
   //MAKE VARIABLES EQUAL ALREADY DECLARED VARIABLED SO THEY CAN BE ACCESSED FROM OUTSIDE OBJECT
   x=tempx;
   y=tempy;
   yspeed=tempyspeed;
   yaccel=tempyaccel;
   type = temptype;
 }
 //--------------------------------------------------------------------------------------------------------------------------------------------------//
 //CREATE DISPLAY FUNCTION THAT DISPLAYS OBJECTS
 void display() {
   if(type==0){image(coin,x,y);} //DISPLAY COIN
   if(type==1){image(fish,x,y);} //DISPLAY FISH
   if(type==2){image(bomb,x,y);} //DISPLAY BOMB
 }
 //--------------------------------------------------------------------------------------------------------------------------------------------------//
 //CREATE FALL FUNCTION THAT MOVES OBJECTS DOWN THE SCREEN
 void fall() {
   y+=yspeed; //CHANGE Y BY YSPEED
   if(tick%(400-yaccel)==0){yspeed+=1;} //INCREASE THE SPEED WITH THE FRAMES BASED ON THE YACCEL VALUE
   if(y>=height || HIT) {  //MOVE ICONS BACK TO ABOVE THE SCREEN WHEN THEY LEAVE THE BOTTOM OR ARE HIT
     x = int(random(0,width-70)); //SET X TO RANDOM WITHIN THE BOUNDARY OF THE CANVAS WIDTH (ACCOUNTING FOR IMAGE SIZE) 
     y = int(random(-500,-100)); //SET Y TO RANDOM VALUE WITHIN A RANGE ABOVE THE SCREEN
     if(HIT==false && type!=2){ //CHECK IF A COIN/FISH FALLS OFF SCREEN
       missed++; //INCREASE MISSED VALUE
       hearts-=2; //LOSE HEARTS
       bombmiss.stop(); typedletter.stop(); //STOP PLAYING OTHER SOUNDS (AVOID MEMORY OVERLOAD)
       bombmiss.play(); //PLAY SOUND
     } 
   }
 }
 //--------------------------------------------------------------------------------------------------------------------------------------------------//
 //CREATE A COLLIDE FUNCTION THAT CHECKS IF OBJECTS HAVE BEEN HIT
 void collide() {
   //COIN HIT
   if(type==0 && mouseX>=x && mouseY>=y && mouseX<=x+70 && mouseY<=y+70) { 
     HIT=true;
     COIN=COIN+1*coinmultiplier; //INCREASE COIN COUNT BASED ON PERMANENT COIN BUFF
     bombmiss.stop(); //STOP PLAYING SOUND (AVOID MEMORY OVERLOAD)
     typedletter.stop(); //STOP PLAYING SOUNDS
     typedletter.play(); //PLAY SOUND
   } 
   //-----//
   //FISH HIT
   else if(type==1 && mouseX>=x && mouseY>=y && mouseX<=x+110 && mouseY<=y+70) { 
     HIT=true; 
     FISH=FISH+1*fishmultiplier; //INCREASE FISH AMOUNT BASED ON PERMANENT FISH BUFF
     bombmiss.stop(); //STOP PLAYING SOUND (AVOID MEMORY OVERLOAD)
     typedletter.stop(); //STOP PLAYING SOUNDS
     typedletter.play(); //PLAY SOUND
   } 
   //-----//
   //BOMB HIT
   else if(type==2 && mouseX>=x && mouseY>=y+20 && mouseX<=x+70 && mouseY<=y+90) {
     HIT=true; 
     bombcount++; //INCREASE BOMB COUNT VARIABLE
     hearts-=3; //DECREASE HEARTS
     bombmiss.stop(); //STOP PLAYING SOUNDS (AVOID MEMORY OVERLOAD)
     typedletter.stop(); //STOP PLAYING SOUNDS 
     bombmiss.play(); //PLAY SOUND
     if(FISH>0){FISH--;} //DECREASE FISH AMOUNT IF PLAYER HAS FISH
     if(COIN>0){COIN--;} //DECREASE COIN AMOUNT IF PLAYER HAS COINS
   }
   //-----//
   //NOTHING HIT
   else{HIT=false;}
 }
 //--------------------------------------------------------------------------------------------------------------------------------------------------//
 //CREATE RESET FUNCTION
 void reset() {
   yspeed=int(random(3,7)); //RESET Y-SPEED TO A RANDOM VALUE
   x=int(random(0,width-70)); //RESET X VALUE
   y=int(random(-1000,-100)); //RESET Y VALUE
 }
}
//--------------------------------------------------------------------------------------------------------------------------------------------------//
