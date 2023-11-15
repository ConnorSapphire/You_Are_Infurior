//SID: 490408401
//THIS GAME IS DEDICATED TO MUSTACHIO
//THIS GAME HAS ONLY BEEN TESTED ON A WINDOWS PC, THOUGH I DON'T FORESEE ANY ISSUES WITH IT RUNNING ON MAC
//--------------------------------------------------------------------------------------------------------------------------------------------------//
//PLEASE IMPORT THE SOUND LIBRARY BY THE PROCESSING FOUNDATION (SKETCH>IMPORT LIBRARY...>ADD LIBRARY...>SOUND)
//ALL SOUNDS WERE SOURCED FROM FREESOUND.ORG AND ARE LICENSED UNDER CREATIVE COMMONS LICENSE OR ATTRIBUTION LICENSE
//--------------------------------------------------------------------------------------------------------------------------------------------------//
//IMPORT SOUND
import processing.sound.*;
//DECLARE SOUNDFILES
SoundFile pressedbutton; //https://freesound.org/people/Sheyvan/sounds/494495/ -- AUTHOR - Sheyvan -- (CREATIVE COMMONS)
SoundFile typedletter; //https://freesound.org/people/InspectorJ/sounds/484344/ -- AUTHOR - InspectorJ -- (ATTRIBUTION)
SoundFile feedmeow; //https://freesound.org/people/SophieMezaM/sounds/446025/ -- AUTHOR - SophieMezaM --audio file was shortened to cut out repeated meows (ATTRIBUTION)
SoundFile restpurr; //https://freesound.org/people/aivaaroo/sounds/147671/ -- AUTHOR - aivaaroo --audio file was shortened to match rest times (ATTRIBUTION NON COMMERCIAL)
SoundFile restpurr1; //https://freesound.org/people/aivaaroo/sounds/147671/ -- AUTHOR - aivaaroo --audio file was shortened to match rest times (ATTRIBUTION NON COMMERCIAL)
SoundFile bombmiss; //https://freesound.org/people/zgump/sounds/86330/ -- AUTHOR - zgump -- (CREATIVE COMMONS)
SoundFile sadmusic; //https://freesound.org/people/dominictreis/sounds/362281/ -- AUTHOR - dominictreis -- (CREATIVE COMMONS)
//--------------------------------------------------------------------------------------------------------------------------------------------------//
//DECLARE ARRAY
Object[] objects = new Object[7];
//--------------------------------------------------------------------------------------------------------------------------------------------------//
//ALL IMAGES WERE MADE BY ME (490408401)
//DECLARE IMAGES
//GENERAL AND START SCREEN IMAGES
PImage background; //GENERAL BACKGROUND IMAGE
PImage shh; //SHHH ;)
PImage start; //START BUTTON
PImage title; //CAT ICON IMAGE
PImage title1; //CAT ICON IMAGE
//SELECT SCREEN IMAGES
PImage select; //SELECT YOUR CAT TITLE
PImage select2; //SELECT YOUR CAT TITLE
PImage selectcat; //SELECT BUTTON ICON
PImage cath1; //CAT HEAD 
PImage cath2; //CAT HEAD
PImage cath3; //CAT HEAD
PImage cath4; //CAT HEAD
PImage cath5; //CAT HEAD
PImage cath6; //CAT HEAD
PImage cath7; //CAT HEAD
PImage cath8; //CAT HEAD
PImage cath9; //CAT HEAD
//NAME SCREEN IMAGES
PImage name; //NAME YOUR CAT TITLE
PImage input; //INPUT BOX IMAGE
//ROOM IMAGES
PImage room; //ROOM BACKGROUND IMAGE
PImage cats; //CAT MASTER IMAGE
PImage cat1; //CAT IMAGE
PImage cat2; //CAT IMAGE
PImage cat3; //CAT IMAGE
PImage cat4; //CAT IMAGE
PImage cat5; //CAT IMAGE
PImage cat6; //CAT IMAGE
PImage cat7; //CAT IMAGE
PImage cat8; //CAT IMAGE
PImage cat9; //CAT IMAGE
PImage mustachio; //MUSTACHIO IMAGE
PImage progress; //PROGRESS BAR IMAGE
PImage menu; //MENU BUTTON
PImage buttons; //FEED REST AND PLAY BUTTONS IMAGE
PImage f; //FEED BUTTON
PImage p; //PLAY BUTTON
PImage r; //REST BUTTON
PImage noise; //NOISES MASTER IMAGE
PImage meow; //MEOW SPEECHBUBBLE
PImage zzz; //SLEEP SPEECHBUBBLE
PImage props; //BUYABLE ITEMS MASTER IMAGE
PImage rball; //RED BALL IMAGE
PImage gball; //GREEN BALL IMAGE
PImage bball; //BLUE BALL IMAGE
PImage fishboneimg; //FISHBONE IMAGE
PImage rcushion; //RED CUSHION IMAGE
PImage gcushion; //GREEN CUSHION IMAGE
PImage bcushion; //BLUE CUSHION IMAGE
PImage floating; //FLOATING INFO MASTER IMAGE
PImage floatingf; //FLOATING FEED BUTTON INFO
PImage floatingp; //FLOATING PLAY BUTTON INFO
PImage floatingr; //FLOATING REST BUTTON INFO
//MENU IMAGES
PImage close; //CLOSE BUTTON
PImage menuoptions; //MENU BUTTONS MASTER IMAGE
PImage shop; //SHOP BUTTON
PImage pause; //PAUSE BUTTON
PImage play; //RESUME BUTTON
PImage abandon; //ABANDON BUTTON
//SHOP IMAGES
PImage shopshop; //SHOP GUI
PImage ballselect; //BALL SELECTION GUI
PImage cushionselect; //CUSHION SELECTION GUI
PImage coincount; //COIN COINT DISPLAY
//MINIGAME IMAGES
PImage gameicons; //GAME ICONS MASTER IMAGE
PImage coin; //COIN IMAGE
PImage fish; //FISH IMAGE
PImage bomb; //BOMB IMAGE
PImage heart; //HEARTS MASTER IMAGE
PImage heart1; //5 HEARTS
PImage heart2; //4.5 HEARTS
PImage heart3; //4 HEARTS
PImage heart4; //3.5 HEARTS
PImage heart5; //3 HEARTS
PImage heart6; //2.5 HEARTS
PImage heart7; //2 HEARTS
PImage heart8; //1.5 HEARTS
PImage heart9; //1 HEARTS
PImage heart10; //0.5 HEARTS
//END OF GAME IMAGES
PImage endbase; //END OF GAME BASE IMAGE MASTER IMAGE
PImage deathbase; //DEAD BACKGROUND IMAGE
PImage abandonbase; //ABANDONED BACKGROUND IMAGE
PImage end; //END OF GAME MASTER IMAGE
PImage death; //WINGS AND HALO IMAGE
PImage abandon1; //BACK OF BOX IMAGE
PImage abandon2; //FRONT OF BOX IMAGE
PImage bored; //QUESTION MARK IMAGE
//TUTORIAL IMAGES
PImage tutorial; //TUTORIAL TEXT BOX IMAGE
//--------------------------------------------------------------------------------------------------------------------------------------------------//
//MAIN STATISTICS TO TRACK
int HAPPINESS=50; //HAPPINESS VALUE
int HUNGER=50; //HEALTH VALUE
int ENERGY=100; //ENERGY VALUE
int COIN = 0; //COIN AMOUNT
int FISH = 0; //FISH AMOUNT
//-----//
//DETERMINES WHICH ROOM THE PLAYER  SEES (AMONG OTHER THINGS)
boolean START = true; //START SCREEN
boolean SELECT1 = false; //SELECTION SCREEN ONE
boolean SELECT2 = false; //SELECTION SCREEN TWO
boolean NAME = false; //NAMING SCREEN
boolean INPUT = false; //INPUT BOX SELECTION
boolean ROOM = false; //ROOM SCREEN
boolean TUTORIALROOM = false; //TUTORIAL SCREEN FOR ROOM
boolean TUTORIALCHECK1 = false; //TUTORIAL CHECK FOR ROOM
boolean PLAY = false; //MINIGAME SCREEN
boolean TUTORIALPLAY = false; //TUTORIAL SCREEN FOR MINIGAME
boolean TUTORIALCHECK2 = false; //TUTORIAL CHECK FOR MINIGAME
boolean END = false; //END MINIGAME MARKER
boolean REST = false; //REST SCREEN
boolean MENU = false; //MENU SCREEN
boolean SHOP = false; //SHOP SCREEN
boolean PAUSE = false; //PAUSE SCREEN
boolean ABANDON = false; //ABANDON SCREEN
boolean DEAD = false; //DEATH SCREEN
boolean BORED = false; //BOREDOM SCREEN
boolean MEOW = false; //MEOW SPEECHBUBBLE AND SOUND
boolean SELECTBALL = false; //SELECT BALL SHOP SCREEN
boolean SELECTCUSHION = false; //SELECT CUSHION SHOP SCREEN
boolean TUTORIAL = true; //TUTORIAL OVERALL CHECK 
boolean BUTTON = false; //PLAY CLICKED BUTTON SOUND
boolean MUSIC = true; //PLAY MUSIC ONLY ONCE
boolean MEOWONCE = false; //PLAY MEOW SOUND ONLY ONCE
//-----//
//VALUES FOR SELECTABLE STYLES
int cat = 9; //DISPLAY SELECTED CAT
String catname=""; //CAT'S NAME 
int ball = 0; //DISPLAY BALL 0 = NONE, 1 = RED, 2 = GREEN, 3 = BLUE
int fishbone = 0; //DISPLAY FISHBONE 0 = NONE, 1 = ONE
int cushion = 0; //DISPLAY CUSHION 0 = NONE, 1 = RED, 2 = GREEN, 3 = BLUE
//-----//
//COUNTERS
float time; //DECREASE HEALTH TIMER
float time2; //DECREASE HAPPINESS TIMER
int meowtimer; //MEOW TIMER
float wait; //REST TIMER
//-----//
//VALUES FOR PERMANENT BUFFS FROM THE SHOP
int restmultiplier=2; //CUSHION BUFF -> DECREASE REST TIME
int ballmultiplier=1; //BALL BUFF -> INCREASE HAPPINESS FROM MINIGAME
int coinmultiplier=1; //COIN MULTIPLIER -> INCREASE COIN AMOUNT RECIEVED FROM SINGLE COIN IN MINIGAME
int fishmultiplier=1; //FISHBONE BUFF -> INCREASE FISH AMOUNT RECIEVED FROM SINGLE FISH IN MINIGAME
//-----//
//VALUES FOR THE MINIGAME
int tick =0; //COUNTS UP BASED ON FRAMERATE
int bombcount = 0; //COUNTS UP BASED ON EVERY BOMB HIT
int missed = 0; //COUNTS UP BASED ON EVERY FISH/COIN MISSED
int hearts = 10; //DECREASES BASED ON MISSED AND BOMBCOUNT
//-----//
//TUTORIAL STRINGS
String roomtitle; //WELCOME
String roomtutorial; //TUTORIAL TEXT
String playtutorial; //TUTORIAL TEXT

//--------------------------------------------------------------------------------------------------------------------------------------------------//

void setup() {
  //SETTING SIZE OF CANVAS
  size(600,600);
  //-----//
  //GIVING VALUES TO SOUNDFILES
  pressedbutton = new SoundFile(this,"button.wav");
  typedletter = new SoundFile(this,"ding.wav");
  feedmeow = new SoundFile(this,"meow.wav");
  restpurr = new SoundFile(this,"purr.wav");
  restpurr1 = new SoundFile(this,"purr1.wav");
  bombmiss = new SoundFile(this,"boom.wav");
  sadmusic = new SoundFile(this,"sadmusic.wav");
  //-----//
  //GIVING VALUES TO IMAGES
  //GENERAL AND START IMAGES
  background = loadImage("background.png");
  shh = loadImage("shh.png");
  start = loadImage("start.png");
  title = loadImage("title.png");
  title1 = title.get(10,510,200,240);
  //SELECT SCREEN IMAGES
  select = loadImage("select.png");
  select2 = select.get(10,170,450,150);
  selectcat = loadImage("select_cat.png");
  cats = loadImage("cat.png");
  cath1 = cats.get(10,10,100,100);
  cath2 = cats.get(170,10,100,100);
  cath3 = cats.get(330,10,100,100);
  cath4 = cats.get(10,220,100,100);
  cath5 = cats.get(170,220,100,100);
  cath6 = cats.get(330,220,100,100);
  cath7 = cats.get(10,430,100,100);
  cath8 = cats.get(170,430,100,100);
  cath9 = cats.get(330,430,100,100);
  //NAME SCREEN IMAGES
  name = loadImage("name.png");
  input = loadImage("input.png");
  //ROOM IMAGES
  room = loadImage("house.png");
  cat1 = cats.get(10,10,150,200);
  cat2 = cats.get(170,10,150,200);
  cat3 = cats.get(330,10,150,200);
  cat4 = cats.get(10,220,150,200);
  cat5 = cats.get(170,220,150,200);
  cat6 = cats.get(330,220,150,200);
  cat7 = cats.get(10,430,150,200);
  cat8 = cats.get(170,430,150,200);
  cat9 = cats.get(330,430,150,200);
  mustachio = loadImage("mustachio.png");
  mustachio = mustachio.get(10,10,150,200);
  progress = loadImage("progress_bars.png");
  menu = loadImage("menu_button.png");
  buttons = loadImage("buttons.png");
  f = buttons.get(10,10,110,100);
  p = buttons.get(120,10,100,100);
  r = buttons.get(230,10,330,100);
  noise = loadImage("noises.png");
  meow = noise.get(10,10,280,100);
  zzz = noise.get(10,110,280,100);
  props = loadImage("props.png");
  rball = props.get(10,10,80,80);
  gball = props.get(100,10,80,80);
  bball = props.get(190,10,80,80);
  fishboneimg = props.get(10,100,110,50);
  rcushion = props.get(10,160,170,80);
  gcushion = props.get(190,160,170,80);
  bcushion = props.get(370,160,170,80);
  floating = loadImage("floating.png");
  floatingf = floating.get(0,0,51,57);
  floatingp = floating.get(54,0,51,57);
  floatingr = floating.get(108,0,51,57);
  //MENU IMAGES
  close = loadImage("close_button.png");
  menuoptions = loadImage("menu.png");
  shop = menuoptions.get(10,10,270,90);
  pause = menuoptions.get(10,110,320,90);
  abandon = menuoptions.get(10,210,440,90);
  play = loadImage("play_button.png");
  //SHOP IMAGES
  shopshop = loadImage("shop.png");
  ballselect = loadImage("ball_selection.png");
  cushionselect = loadImage("cushion_selection.png");
  coincount = loadImage("coin_count.png");
  //MINIGAME IMAGES
  gameicons = loadImage("game_icons.png");
  coin = gameicons.get(10,10,70,70);
  fish = gameicons.get(90,10,110,70);
  bomb = gameicons.get(210,10,70,90);
  heart = loadImage("hearts.png");
  heart1 = heart.get(0,0,310,60);
  heart2 = heart.get(0,60,310,60);
  heart3 = heart.get(0,120,310,60);
  heart4 = heart.get(0,180,310,60);
  heart5 = heart.get(0,240,310,60);
  heart6 = heart.get(0,300,310,60);
  heart7 = heart.get(0,360,310,60);
  heart8 = heart.get(0,420,310,60);
  heart9 = heart.get(0,480,310,60);
  heart10 = heart.get(0,540,310,60);
  //END OF GAME IMAGES
  endbase = loadImage("end_base.png");
  deathbase = endbase.get(10,10,270,280);
  abandonbase = endbase.get(10,300,280,260);
  end = loadImage("end.png");
  death = end.get(10,400,230,190);
  abandon1 = end.get(10,90,210,90);
  abandon2 = end.get(10,190,190,70);
  bored = end.get(10,270,80,120);
  //TUTORIAL IMAGES
  tutorial = loadImage("tutorial.png");
  //-----//
  //GIVING VALUE TO STRINGS
  roomtitle = "WELCOME TO 'YOU ARE INFURIOR'";
  playtutorial = "Welcome to the minigame! Here you'll attempt to earn as many coins and fish as possible, while avoiding the dangerous bombs.\n\nSimply move your cursor to collect the falling objects, but beware that bombs will not only decrease your hearts, but will also destroy one of your fish and one of your coins.\n\nEach fish or coin that escapes your grasp will also result in the loss of hearts.\n\nDo your best and try to stay alive as long as possible. Remember you need at least ten coins to rest and regain your energy!";
}

//--------------------------------------------------------------------------------------------------------------------------------------------------//

void draw() {
  //SET UNIVERSAL BACKGROUND (UNLESS OVERRIDDEN)
  image(background,0,0);
  //-----//
  //DECREASE HUNGER AND HAPPINESS IN CERTAIN ROOMS USING TIMERS FROM EARLIER (VALUES ARE DECLARED IN MOUSECLICKED() SECTION)
  if(millis()-time > 3000 && PAUSE==false && PLAY==false && BORED==false && DEAD ==false && ABANDON==false && START==false && SELECT1==false && SELECT2==false && NAME==false && TUTORIALROOM==false) { //doesn't decrease/increase while playing minigame or while paused or while dead/bored/abandoned
    HUNGER--;
    time = millis();
  }
  if(millis()-time2 > 5000 && PAUSE==false && PLAY==false && BORED==false && DEAD ==false && ABANDON==false && START==false && SELECT1==false && SELECT2==false && NAME==false && TUTORIALROOM==false){
    HAPPINESS--;
    time2 = millis();
  } 
  if(millis()<time) {time=millis();} //IF MILLIS() LOOPS, TIMER WON'T GET STUCK
  if(millis()<time2) {time2=millis();}
  //-----//
  //CHECK IF TUTORIAL HAS BEEN COMPLETE WHILE APPLICATION WAS OPEN (ONLY PLAYS ONCE PER OPENING NO MATTER HOW MANY TIMES YOU REPEAT THE GAME)
  if(TUTORIALCHECK1 && TUTORIALCHECK2){TUTORIAL=false;}
  //-----//
  //PLAY BUTTON SOUND IF A BUTTON IS PRESSED
  if(BUTTON){pressedbutton.play(); BUTTON=false;}
  //-----//
  //SET UPPER AND LOWER LIMITS FOR HAPPINESS, HUNGER (HEALTH) AND ENERGY
  if(HAPPINESS>100) {HAPPINESS = 100;}
  if(HUNGER>100) {HUNGER = 100;}
  if(ENERGY>100) {ENERGY = 100;}
  if(HAPPINESS<0) {HAPPINESS = 0;}
  if(HUNGER<0) {HUNGER = 0;}
  if(ENERGY<0) {ENERGY = 0;}
  //-----//
  //TRIGGER THE END OF THE GAME
  if(HAPPINESS<=0) {BORED = true;}
  if(HUNGER<=0) {DEAD = true;}
  
  //--------------------------------------------------------------------------------------------------------------------------------------------------//
  //START GUI
  //--------------------------------------------------------------------------------------------------------------------------------------------------//
  if(START) {
      image(start,120,400); //START BUTTON
      image(title1,190,130); //CAT PICTURE
  } 
  //--------------------------------------------------------------------------------------------------------------------------------------------------//
  //SELECTION ONE GUI
  //--------------------------------------------------------------------------------------------------------------------------------------------------//
  else if(SELECT1) { 
      if(mouseX<110 && mouseX>50 && mouseY<70 && mouseY>30){image(shh,0,0);} //SHHH ;)
      image(select2,75,70); //SELECT YOUR CAT TITLE
      image(selectcat,20,290); //BACKGROUND ICON 
      image(selectcat,210,290); //^
      image(selectcat,400,290); //^
      image(cath1,60,320); //CAT HEAD ICON
      image(cath2,250,320); //^
      image(cath3,440,320); //^
  } 
  //--------------------------------------------------------------------------------------------------------------------------------------------------//
  //SELECTION TWO GUI
  //--------------------------------------------------------------------------------------------------------------------------------------------------//
  else if(SELECT2) { 
      image(select2,75,70); //SELECT YOUR CAT TITLE
      image(selectcat,20,290); //BACKGROUND ICON 
      image(selectcat,210,290); //^
      image(selectcat,400,290); //^
      //DISPLAY DIFFERENT HEADS BASED ON PREVIOUS DECISIONS
      if(cat==1){
        image(cath1,60,320); //CAT HEAD ICON
        image(cath4,250,320); //^
        image(cath7,440,320); //^
      } else if(cat==2){
        image(cath2,60,320); //^
        image(cath5,250,320); //^
        image(cath8,440,320); //^
      } else if(cat==3){
        image(cath3,60,320); //^
        image(cath6,250,320); //^
        image(cath9,440,320); //^
      }
  } 
  //--------------------------------------------------------------------------------------------------------------------------------------------------//
  //NAMING GUI
  //--------------------------------------------------------------------------------------------------------------------------------------------------//
  else if(NAME) {
      image(input,0,0); //INPUT BOX IMAGE
      image(name,65,60); //NAME YOUR CAT TITLE 
      fill(0,162,232);
      textSize(40);
      text(catname,80,341); //TEXT WITHIN INPUT BOX
      //CHANGE COLOUR OF INPUT BOX IF IT'S SELECTED 
      if(INPUT) {
        fill(220,220,220);
        noStroke();
        rectMode(CORNER);
        rect(70,310,440,40);
        fill(0,162,232);
        text(catname,80,341); //PLACED HERE AS WELL TO DISPLAY OVER THE RECTANGLE THAT CHANGES THE INPUT BOX COLOUR
      }
      textSize(12.0); //RETURN TEXT TO DEFAULT SIZE
  }
  //--------------------------------------------------------------------------------------------------------------------------------------------------//
  //ROOM GUI
  //--------------------------------------------------------------------------------------------------------------------------------------------------//
  else if(ROOM) {
      image(room,0,0); //BACKGROUND IMAGE FOR ROOM
      //-----//
      END=false; //CHANGE MINIGAME END MECHANISM BACK TO NORMAL
      bombmiss.stop(); //STOP SOUNDS WHICH CAN CAUSE MEMORY TO OVERLOAD
      typedletter.stop();  //^
      restpurr.stop();  //^
      restpurr1.stop();  //^
      sadmusic.stop();  //^
      //-----//
      //DISPLAY THE SELECTED CAT
      if(cat==1){image(cat1,225,290);} //CAT IMAGE
      else if(cat==2){image(cat2,225,290);}  //^
      else if(cat==3){image(cat3,225,290);}  //^
      else if(cat==4){image(cat4,225,290);}  //^
      else if(cat==5){image(cat5,225,290);}  //^
      else if(cat==6){image(cat6,225,290);}  //^
      else if(cat==7){image(cat7,225,290);}  //^
      else if(cat==8){image(cat8,225,290);}  //^
      else if(cat==9){image(cat9,225,290);}  //^
      else if(cat==10){image(mustachio,225,290);}  //^ ;)
      //-----//
      //DISPLAY THE PROGRESS BARS
      image(progress,410,0); //PROGRESS BAR IMAGE
      noStroke();
      rectMode(CORNERS);
      fill(0,255,0); //green
      rect(440,230,450,230-(10*HAPPINESS/5));
      fill(255,0,0); //red
      rect(500,230,510,230-(10*HUNGER/5));
      fill(0,0,255); //blue
      rect(560,230,570,230-(10*ENERGY/5));
      //-----//
      //DISPLAY THE BUTTONS
      image(menu,0,0); //MENU BUTTON
      image(p,250,500); //PLAY BUTTON      
      image(f,100,500); //FEED BUTTON
      image(r,400,500); //REST BUTTON
      //-----//
      //DISPLAY ANY BOUGHT ITEMS
      if(ball==1) {image(rball,400,400);} //RED BALL IMAGE
      else if(ball==2) {image(gball,400,400);} //GREEN BALL IMAGE
      else if(ball==3) {image(bball,400,400);} //BLUE BALL IMAGE
      if(fishbone == 1) {image(fishboneimg,220,445);} //FISHBONE IMAGE
      if(cushion==1) {image(rcushion,30,400);} //RED CUSHION IMAGE
      else if(cushion==2) {image(gcushion,30,400);} //RED CUSHION IMAGE
      else if(cushion==3) {image(bcushion,30,400);} //RED CUSHION IMAGE
      //-----//
      //IF THE PLAYER CLICKS ON THE CAT
      if(MEOW){
        if(MEOWONCE){feedmeow.play(); MEOWONCE=false;} //PLAYS SOUND AND MAKES SURE IT ONLY PLAYS ONCE
        if(millis()-meowtimer < 1500){image(meow,320,300);} //MEOW SPEECHBUBBLE IMAGE APPEARS FOR 1.5 SECONDS
        else{MEOW=false;} //DEACTIVATES SEQUENCE
        if(millis()<meowtimer){meowtimer=millis();} //IF MILLIS() LOOPS, TIMER WON'T GET STUCK
      }
      //-----//
      //FLOATING INFORMATION 
      //SHOWS HAPPINESS STATS WHEN HOVERING OVER HAPPINESS PROGRESS BAR
      if(mouseX>430 && mouseY>20 && mouseX<460 && mouseY<240) {
        noStroke();
        fill(255,255,255);
        rectMode(CORNER);
        rect(mouseX,mouseY-45,100,45);
        fill(0,162,232);
        text("HAPPINESS", mouseX+10, mouseY-25); 
        text(HAPPINESS, mouseX+10, mouseY-10);
      } 
      //SHOWS HEALTH STATS WHEN HOVERING OVER HEALTH PROGRESS BAR
      else if(mouseX>490 && mouseY>20 && mouseX<520 && mouseY<240) {
        noStroke();
        fill(255,255,255);
        rectMode(CORNER);
        rect(mouseX,mouseY-45,75,45);
        fill(0,162,232);
        text("HEALTH", mouseX+10, mouseY-25);
        text(HUNGER, mouseX+10, mouseY-10);
      } 
      //SHOWS ENERGY STATS WHEN HOVERING OVER ENERGY PROGRESS BAR
      else if(mouseX>550 && mouseY>20 && mouseX<580 && mouseY<240) {
        noStroke();
        fill(255,255,255);
        rectMode(CORNER);
        rect(mouseX-80,mouseY-45,80,45);
        fill(0,162,232);
        text("ENERGY", mouseX-70, mouseY-25);
        text(ENERGY, mouseX-70, mouseY-10);
      } 
      //SHOWS FEEDING REQUIREMENTS WHEN HOVERING OVER THE FEED BUTTON
      else if(mouseX<200 && mouseX>100 && mouseY<590 && mouseY>500) {
        image(floatingf,mouseX,mouseY-57);
        fill(0,162,232);
        text(FISH,mouseX+31,mouseY-6);
      } 
      //SHOWS PLAYING REQUIREMENTS WHEN HOVERING OVER THE PLAY BUTTON
      else if(mouseX<350 && mouseX>250 && mouseY<590 && mouseY>500) {
        image(floatingp,mouseX,mouseY-57);
        fill(0,162,232);
        text(ENERGY,mouseX+28,mouseY-6);
      } 
      //SHOWS RESTING REQUIREMENTS WHEN HOVERING OVER THE REST BUTTON
      else if(mouseX<500 && mouseX>400 && mouseY<590 && mouseY>500) {
        image(floatingr,mouseX,mouseY-57);
        fill(0,162,232);
        text(COIN,mouseX+31,mouseY-6);
      } 
      //SHOWS CAT NAME WHEN HOVERING OVER CAT
      else if(mouseX<315 && mouseX>225 && mouseY<500 && mouseY>300) {
        noStroke();
        fill(255,255,255);
        rectMode(CORNER);
        rect(mouseX,mouseY-20,catname.length()*9,20);
        fill(0,162,232);
        text(catname, mouseX+5, mouseY-5);
      }
  } 
  //--------------------------------------------------------------------------------------------------------------------------------------------------//
  //REST GUI
  //--------------------------------------------------------------------------------------------------------------------------------------------------//
  else if(REST) {
      feedmeow.stop(); //STOPS PLAYING MEOW SOUND IF CLICKED DIRECTLY AFTER CLICKING THE CAT
      MEOW=false; //SETS MEOW TO FALSE ^
      //-----//
      //BACKGROUND IMAGE FOR SCREEN
      image(room,0,0);
      //-----//
      //DISPLAY SELECTED CAT
      if(cat==1){image(cat1,225,290);}
      else if(cat==2){image(cat2,225,290);}
      else if(cat==3){image(cat3,225,290);}
      else if(cat==4){image(cat4,225,290);}
      else if(cat==5){image(cat5,225,290);}
      else if(cat==6){image(cat6,225,290);}
      else if(cat==7){image(cat7,225,290);}
      else if(cat==8){image(cat8,225,290);}
      else if(cat==9){image(cat9,225,290);}
      else if(cat==10){image(mustachio,225,290);}
      //-----//
      //DISPLAY PROGRESS BARS
      image(progress,410,0); 
      noStroke();
      rectMode(CORNERS);
      fill(0,255,0); //green
      rect(440,230,450,230-(10*HAPPINESS/5));
      fill(255,0,0); //red
      rect(500,230,510,230-(10*HUNGER/5));
      fill(0,0,255); //blue
      rect(560,230,570,230-(10*ENERGY/5));
      //-----//
      //DISPLAY BOUGHT ITEMS
      if(ball==1) {image(rball,400,400);}
      else if(ball==2) {image(gball,400,400);}
      else if(ball==3) {image(bball,400,400);}
      if(fishbone == 1) {image(fishboneimg,220,445);}
      if(cushion==1) {image(rcushion,30,400);}
      else if(cushion==2) {image(gcushion,30,400);}
      else if(cushion==3) {image(bcushion,30,400);}
      //-----//
      //DISPLAY SPEECHBUBBLE AND CLOSE CAT'S EYELIDS
      image(zzz,320,300);
      if(cat==1 || cat==4 || cat==7) {
        noStroke();
        rectMode(CORNER);
        fill(107);
        rect(245,350,10,10);
        rect(285,350,10,10);
      } else if(cat==2 || cat==5 || cat==8) {
        noStroke();
        rectMode(CORNER);
        fill(235,107,19);
        rect(245,350,10,10);
        rect(285,350,10,10);
      } else if(cat==3 || cat==6 || cat==9) {
        noStroke();
        rectMode(CORNER);
        fill(235);
        rect(245,350,10,10);
        rect(285,350,10,10);
      } else if(cat==10) {
        noStroke();
        rectMode(CORNER);
        fill(10);
        rect(245,350,10,10);
        rect(285,350,10,10);
      }
      rectMode(CORNERS); //RESET RECTMODE TO WHAT IT WAS BEFORE CHANGING 
     //-----//
     //TIMER FOR HOW LONG REST LASTS + REWARDS AND RETURN TO ROOM AFTER TIMER FINISHES
      if(millis()-wait > 5000*restmultiplier) { //RESTMULTIPLIER DECREASES WITH PURCHASE OF CUSHION
          ENERGY+=20;
          REST=false;
          ROOM=true;
          wait=millis(); //RESETS WAIT TIMER
      }
      if(millis()<wait){wait=millis();} //IF MILLIS() LOOPS, TIMER WON'T BE STUCK
      //-----//
      //FLOATING INFORMATION 
      //SHOWS HAPPINESS STATS WHEN HOVERING OVER HAPPINESS PROGRESS BAR
      if(mouseX>430 && mouseY>20 && mouseX<460 && mouseY<240) {
        noStroke();
        fill(255,255,255);
        rectMode(CORNER);
        rect(mouseX,mouseY-45,100,45);
        fill(0,162,232);
        text("HAPPINESS", mouseX+10, mouseY-25); 
        text(HAPPINESS, mouseX+10, mouseY-10);
      } 
      //SHOWS HEALTH STATS WHEN HOVERING OVER HEALTH PROGRESS BAR
      else if(mouseX>490 && mouseY>20 && mouseX<520 && mouseY<240) {
        noStroke();
        fill(255,255,255);
        rectMode(CORNER);
        rect(mouseX,mouseY-45,75,45);
        fill(0,162,232);
        text("HEALTH", mouseX+10, mouseY-25);
        text(HUNGER, mouseX+10, mouseY-10);
      } 
      //SHOWS ENERGY STATS WHEN HOVERING OVER ENERGY PROGRESS BAR
      else if(mouseX>550 && mouseY>20 && mouseX<580 && mouseY<240) {
        noStroke();
        fill(255,255,255);
        rectMode(CORNER);
        rect(mouseX-80,mouseY-45,80,45);
        fill(0,162,232);
        text("ENERGY", mouseX-70, mouseY-25);
        text(ENERGY, mouseX-70, mouseY-10);
      } 
  } 
  //--------------------------------------------------------------------------------------------------------------------------------------------------//
  //MENU GUI
  //--------------------------------------------------------------------------------------------------------------------------------------------------//
  else if(MENU) {
      image(close,0,0); //CLOSE BUTTON
      image(shop,165,135); //SHOP BUTTON
      image(pause,140,255); //PAUSE BUTTON
      image(abandon,80,375); //ABANDON BUTTON
  } 
  //--------------------------------------------------------------------------------------------------------------------------------------------------//
  //SHOP GUI
  //--------------------------------------------------------------------------------------------------------------------------------------------------//
  else if(SHOP) {
      image(close,0,0); //CLOSE BUTTON
      image(shopshop,0,90); //SHOP GUI IMAGE
      fill(0,162,232);
      textSize(18.0);
      text("FISHBONE",60,245); //FISHBONE ITEM TITLE
      textSize(12.0);
      text("A tasty treat to keep your cat satiated."+"\n"+"\n"+"Get one more fish for every fish you catch."+"\n"+"Get one more coin for every coin you catch.",50,260,160,420);
      textSize(18.0); //^ FISHBONE ITEM DESCRIPTION
      text("BALL",275,245); //BALL ITEM TITLE
      textSize(12.0);
      text("A fun ball to keep your cat entertained."+"\n"+"\n"+"Earn twice as much happiness from each game."+"\n"+"Get one more coin for every coin you catch.",240,260,350,420);
      textSize(18.0); //^ BALL ITEM DESCRIPTION
      text("CUSHION",445,245); //CUSHION ITEM TITLE
      textSize(12.0);
      text("A comfortable bed to keep your cat well-rested."+"\n"+"\n"+"Rest for less time."+"\n"+"Get one more coin for every coin you catch.",430,260,540,420);
      image(coincount,290,0); //COINCOUNT IMAGE  (^ CUSHION ITEM DESCRIPTION)
      textSize(50.0);
      text(COIN,430,72); //COIN COUNT
      textSize(12.0);
  } 
  //--------------------------------------------------------------------------------------------------------------------------------------------------//
  //SELECT BALL GUI
  //--------------------------------------------------------------------------------------------------------------------------------------------------//
  else if(SELECTBALL) {
      image(ballselect,0,90); //SELECT BALL GUI
  } 
  //--------------------------------------------------------------------------------------------------------------------------------------------------//
  //SELECT CUSHION GUI
  //--------------------------------------------------------------------------------------------------------------------------------------------------//
  else if(SELECTCUSHION) {
      image(cushionselect,0,90); //SELECT CUSHION GUI
  } 
  //--------------------------------------------------------------------------------------------------------------------------------------------------//
  //PAUSE GUI
  //--------------------------------------------------------------------------------------------------------------------------------------------------//
  else if(PAUSE) {
      //BACKGROUND IMAGE FOR SCREEN
      image(room,0,0);
      //-----//
      //DISPLAY SELECTED CAT
      if(cat==1){image(cat1,225,290);}
      else if(cat==2){image(cat2,225,290);}
      else if(cat==3){image(cat3,225,290);}
      else if(cat==4){image(cat4,225,290);}
      else if(cat==5){image(cat5,225,290);}
      else if(cat==6){image(cat6,225,290);}
      else if(cat==7){image(cat7,225,290);}
      else if(cat==8){image(cat8,225,290);}
      else if(cat==9){image(cat9,225,290);}
      else if(cat==10){image(mustachio,225,290);}
      //-----//
      //DISPLAY PROGRESS BARS
      image(progress,410,0); 
      noStroke();
      rectMode(CORNERS);
      fill(0,255,0); //green
      rect(440,230,450,230-(10*HAPPINESS/5));
      fill(255,0,0); //red
      rect(500,230,510,230-(10*HUNGER/5));
      fill(0,0,255); //blue
      rect(560,230,570,230-(10*ENERGY/5));
      //-----//
      //DISPLAY BUTTONS
      image(menu,0,0);
      image(p,250,500);
      image(f,100,500);
      image(r,400,500);
      //-----//
      //DISPLAY BOUGHT ITEMS
      if(ball==1) {image(rball,400,400);}
      else if(ball==2) {image(gball,400,400);}
      else if(ball==3) {image(bball,400,400);}
      if(fishbone == 1) {image(fishboneimg,220,445);}
      if(cushion==1) {image(rcushion,30,400);}
      else if(cushion==2) {image(gcushion,30,400);}
      else if(cushion==3) {image(bcushion,30,400);}
      //-----//
      //DISPLAY RESUME BUTTON
      image(play,240,245);
  } 
  //--------------------------------------------------------------------------------------------------------------------------------------------------//
  //MINIGAME GUI
  //--------------------------------------------------------------------------------------------------------------------------------------------------//
  else if(PLAY){
    //TIMER VALUE THAT INCREASES EVERY FRAME
    tick++; 
    //-----//
    //COMPLETE OBJECT FUNCTIONS FOR EVERY OBJECT IN ARRAY
    for(int i=0; i<7; i++) {
      objects[i].display();
      objects[i].fall();
      objects[i].collide();
    } 
    //-----//
    //DISPLAY CURRENT HEARTS
    if(hearts==10){image(heart1,290,0);}
    else if(hearts==9){image(heart2,290,0);}
    else if(hearts==8){image(heart3,290,0);}
    else if(hearts==7){image(heart4,290,0);}
    else if(hearts==6){image(heart5,290,0);}
    else if(hearts==5){image(heart6,290,0);}
    else if(hearts==4){image(heart7,290,0);}
    else if(hearts==3){image(heart8,290,0);}
    else if(hearts==2){image(heart9,290,0);}
    else if(hearts==1){image(heart10,290,0);}
    else if(hearts<=0){END=true;}
    //-----//
    //END THE GAME IF YOU RUN OUT OF HEARTS
    if(END) {
      PLAY=false;
      ROOM=true;
      for(int i=0; i<7; i++) {
        objects[i].reset(); //RESETS OBJECTS
      }
      missed=0; //RESETS VALUE TO MAKE SURE THINGS RUN SMOOTHLY
      bombcount=0; // ^ 
      hearts=10; // ^ 
      time=millis(); //^
      time2=millis(); //^
    }
  } 
  //--------------------------------------------------------------------------------------------------------------------------------------------------//
  //ROOM TUTORIAL GUI
  //--------------------------------------------------------------------------------------------------------------------------------------------------//
  else if(TUTORIALROOM) {
      //BACKGROUND IMAGE FOR SCREEN
      image(room,0,0);
      //-----//
      //DISPLAY SELECTED CAT
      if(cat==1){image(cat1,225,290);}
      else if(cat==2){image(cat2,225,290);}
      else if(cat==3){image(cat3,225,290);}
      else if(cat==4){image(cat4,225,290);}
      else if(cat==5){image(cat5,225,290);}
      else if(cat==6){image(cat6,225,290);}
      else if(cat==7){image(cat7,225,290);}
      else if(cat==8){image(cat8,225,290);}
      else if(cat==9){image(cat9,225,290);}
      else if(cat==10){image(mustachio,225,290);}
      //-----//
      //DISPLAY PROGRESS BARS
      image(progress,410,0); 
      noStroke();
      rectMode(CORNERS);
      fill(0,255,0); //green
      rect(440,230,450,230-(10*HAPPINESS/5));
      fill(255,0,0); //red
      rect(500,230,510,230-(10*HUNGER/5));
      fill(0,0,255); //blue
      rect(560,230,570,230-(10*ENERGY/5));
      //-----//
      //DISPLAY BUTTONS
      image(menu,0,0);
      image(p,250,500);
      image(f,100,500);
      image(r,400,500);
      //-----//
      //DISPLAY FLOATING OBJECTS
      //HAPPINESS PROGRESS STATS
      if(mouseX>430 && mouseY>20 && mouseX<460 && mouseY<240) {
        noStroke();
        fill(255,255,255);
        rectMode(CORNER);
        rect(mouseX,mouseY-45,100,45);
        fill(0,162,232);
        text("HAPPINESS", mouseX+10, mouseY-25);
        text(HAPPINESS, mouseX+10, mouseY-10);
      } 
      //HEALTH PROGRESS STATS
      else if(mouseX>490 && mouseY>20 && mouseX<520 && mouseY<240) {
        noStroke();
        fill(255,255,255);
        rectMode(CORNER);
        rect(mouseX,mouseY-45,75,45);
        fill(0,162,232);
        text("HEALTH", mouseX+10, mouseY-25);
        text(HUNGER, mouseX+10, mouseY-10);
      } 
      //ENERGY PROGRESS STATS
      else if(mouseX>550 && mouseY>20 && mouseX<580 && mouseY<240) {
        noStroke();
        fill(255,255,255);
        rectMode(CORNER);
        rect(mouseX-80,mouseY-45,80,45);
        fill(0,162,232);
        text("ENERGY", mouseX-70, mouseY-25);
        text(ENERGY, mouseX-70, mouseY-10);
      } 
      //FEED REQUIREMENTS
      else if(mouseX<200 && mouseX>100 && mouseY<590 && mouseY>500) {
        image(floatingf,mouseX,mouseY-57);
        fill(0,162,232);
        text(FISH,mouseX+31,mouseY-6);
      } 
      //PLAY REQUIREMENTS
      else if(mouseX<350 && mouseX>250 && mouseY<590 && mouseY>500) {
        image(floatingp,mouseX,mouseY-57);
        fill(0,162,232);
        text(ENERGY,mouseX+28,mouseY-6);
      } 
      //REST REQUIREMENTS
      else if(mouseX<500 && mouseX>400 && mouseY<590 && mouseY>500) {
        image(floatingr,mouseX,mouseY-57);
        fill(0,162,232);
        text(COIN,mouseX+31,mouseY-6);
      } 
      //-----//
      //TUTORIAL IMAGE AND TEXT
      image(tutorial,40,110); //TUTORIAL IMAGE
      rectMode(CORNERS);
      roomtutorial = "Your cat, " + catname + ", needs lots of love and food (mainly food). It's your job to slave away to earn fish and coins to feed your cat and keep them happy.\n\nOn the right side of your screen are bars that show your cat's Happiness, Health and Energy. Use these bars to determine your actions so that " + catname + " will continue to bless you with their presence.\n\nTo gain Health you must feed your cat ten fish using the Feed button at the bottom-left of the screen.\nTo gain Energy you must rest using the Rest button at the bottom-right of the screen.\nTo get started, use the Play button at the bottom of the screen to earn coins and fish, while also increasing your cat's Happiness.";//\n\nUpgrade the room in the shop, accessed through the menu, to gain permanent buffs and help keep your cat happy.";
      fill(0,162,232); //^ DECLARE TEXT HERE TO ACCOUNT FOR CHANGING CATNAME VARIABLE
      textSize(18.0);
      text(roomtitle,80,170); //DISPLAY TITLE
      textSize(12.0);
      text(roomtutorial,80,190,530,460); //DISPLAY TUTORIAL TEXT
  } 
  //--------------------------------------------------------------------------------------------------------------------------------------------------//
  // MINIGAME TUTORIAL GUI
  //--------------------------------------------------------------------------------------------------------------------------------------------------//
  else if(TUTORIALPLAY) {
      //DISPLAY HEARTS  
      image(heart1,290,0);
      //-----//
      //TUTORIAL IMAGE AND TEXT
      image(tutorial,40,110); //TUTORIAL IMAGE
      rectMode(CORNERS);
      fill(0,162,232);
      textSize(12.0);
      text(playtutorial,80,180,530,460); //DISPLAY TUTORIAL TEXT
  }
  
  //--------------------------------------------------------------------------------------------------------------------------------------------------//
  //END OF GAME GUIS
  //--------------------------------------------------------------------------------------------------------------------------------------------------//
  //DEATH GUI
  //--------------------------------------------------------------------------------------------------------------------------------------------------//
  if(DEAD) {
    //SET EVERY OTHER SCREEN TO FALSE
    START = false;
    SELECT1 = false;
    SELECT2 = false;
    NAME = false;
    ROOM = false;
    PLAY = false;
    MENU = false;
    SHOP = false;
    PAUSE = false;
    ABANDON = false;
    BORED = false;
    //-----//
    //RESET VARIABLES
    HAPPINESS=50;
    HUNGER=50;
    ENERGY=100;
    COIN=0;
    FISH=0;
    ball = 0;
    fishbone = 0;
    cushion = 0;
    //-----//
    //DISPLAY DEATH IMAGES
    image(deathbase,165,160); //DISPLAY BASE IMAGE 
    if(cat==1){image(cat1,255,220);} //DISPLAY SELECTED CAT
    else if(cat==2){image(cat2,255,220);} //^
    else if(cat==3){image(cat3,255,220);} //^
    else if(cat==4){image(cat4,255,220);} //^
    else if(cat==5){image(cat5,255,220);} //^
    else if(cat==6){image(cat6,255,220);} //^
    else if(cat==7){image(cat7,255,220);} //^
    else if(cat==8){image(cat8,255,220);} //^
    else if(cat==9){image(cat9,255,220);} //^
    else if(cat==10){image(mustachio,255,220);} //^
    image(death,185,180); //DISPLAY WINGS AND HALO
    //-----//
    //PLAY MUSIC
    if(MUSIC){sadmusic.play(); MUSIC=false;}
  } 
  //--------------------------------------------------------------------------------------------------------------------------------------------------//
  //BOREDOM GUI
  //--------------------------------------------------------------------------------------------------------------------------------------------------//
  if(BORED) {
    //SET OTHER SCREENS TO FALSE
    START = false;
    SELECT1 = false;
    SELECT2 = false;
    NAME = false;
    ROOM = false;
    PLAY = false;
    MENU = false;
    SHOP = false;
    PAUSE = false;
    ABANDON = false;
    DEAD = false;
    //-----//
    //RESET VARIABLES THAT AREN'T VISIBLE
    COIN=0;
    FISH=0;
    //-----//
    //DISPLAY BORED IMAGES 
    image(room,0,0); //BACKGROUND IMAGE
      image(bored,260,320); //BORED IMAGE
      //DISPLAY PROGRESS BAR 
      image(progress,410,0); 
      noStroke();
      rectMode(CORNERS);
      fill(0,255,0); //green
      rect(440,230,450,230-(10*HAPPINESS/5));
      fill(255,0,0); //red
      rect(500,230,510,230-(10*HUNGER/5));
      fill(0,0,255); //blue
      rect(560,230,570,230-(10*ENERGY/5));
      //DISPLAY BOUGHT ITEMS
      if(ball==1) {image(rball,400,400);}
      else if(ball==2) {image(gball,400,400);}
      else if(ball==3) {image(bball,400,400);}
      if(fishbone == 1) {image(fishboneimg,220,445);}
      if(cushion==1) {image(rcushion,30,400);}
      else if(cushion==2) {image(gcushion,30,400);}
      else if(cushion==3) {image(bcushion,30,400);}
    //-----//
    //PLAY MUSIC
    if(MUSIC){sadmusic.play(); MUSIC=false;}
  } 
  //--------------------------------------------------------------------------------------------------------------------------------------------------//
  //ABANDONED GUI
  //--------------------------------------------------------------------------------------------------------------------------------------------------//
  if(ABANDON){
    //SET OTHER ROOMS TO FALSE
    START = false;
    SELECT1 = false;
    SELECT2 = false;
    NAME = false;
    ROOM = false;
    PLAY = false;
    MENU = false;
    SHOP = false;
    PAUSE = false;
    DEAD = false;
    BORED = false;
    //-----//
    //RESET VARIABLES
    HAPPINESS=50;
    HUNGER=50;
    ENERGY=100;
    COIN=0;
    FISH=0;
    ball = 0;
    fishbone = 0;
    cushion = 0;
    //-----//
    //DISPLAY ABANDONED IMAGES
    image(abandonbase,160,170); //ABANDONED BASE IMAGE
    image(abandon1,180,310); //BACK OF CARDBOARD BOX IMAGE
    if(cat==1){image(cat1,240,190);} //SELECTED CAT IMAGE
    else if(cat==2){image(cat2,240,190);} //^
    else if(cat==3){image(cat3,240,190);} //^
    else if(cat==4){image(cat4,240,190);} //^
    else if(cat==5){image(cat5,240,190);} //^
    else if(cat==6){image(cat6,240,190);} //^
    else if(cat==7){image(cat7,240,190);} //^
    else if(cat==8){image(cat8,240,190);} //^
    else if(cat==9){image(cat9,240,190);} //^
    else if(cat==10){image(mustachio,240,190);} //^
    image(abandon2,230,340); //FRONT OF CARDBOARD BOX
  }
}

//--------------------------------------------------------------------------------------------------------------------------------------------------//

void mouseClicked() {
  if(START && mouseX<470 && mouseX>130 && mouseY<520 && mouseY>410) {
    START = false;
    SELECT1 = true; //CHANGE SCREEN
    HAPPINESS=50; //RESET VARIABLES
    HUNGER=50;
    ENERGY=100;
    ball=0;
    fishbone=0;
    cushion=0;
    restmultiplier=2; 
    ballmultiplier=1; 
    coinmultiplier=1; 
    fishmultiplier=1;
    time = millis();
    time2 = millis();
    catname="";
    BUTTON=true; //PLAY SOUND
  } 
  //--------------------------------------------------------------------------------------------------------------------------------------------------//
  else if(SELECT1 && mouseX<190 && mouseX>30 && mouseY<440 && mouseY>300) {
    SELECT1 = false;
    SELECT2 = true; //CHANGE SCREEN
    cat = 1; //SELECTED CAT
    HAPPINESS=50; //RESET VARIABLES
    HUNGER=50;
    ENERGY=100;
    BUTTON=true; //PLAY SOUND
  } else if(SELECT1 && mouseX<380 && mouseX>220 && mouseY<440 && mouseY>300) {
    SELECT1 = false;
    SELECT2 = true; //CHANGE SCREEN
    cat = 2; //SELECTED CAT
    HAPPINESS=50; //RESET VARIABLES
    HUNGER=50;
    ENERGY=100;
    BUTTON=true; //PLAY SOUND
  } else if(SELECT1 && mouseX<570 && mouseX>410 && mouseY<440 && mouseY>300) {
    SELECT1 = false;
    SELECT2 = true; //CHANGE SCREEN
    cat = 3; //SELECTED CAT
    HAPPINESS=50; //RESET VARIABLES
    HUNGER=50;
    ENERGY=100;
    BUTTON=true; //PLAY SOUND
  } else if(SELECT1 && mouseX<110 && mouseX>50 && mouseY<70 && mouseY>30) {
    SELECT1 = false;
    if(TUTORIAL && TUTORIALCHECK1==false){TUTORIALROOM=true;}
    else{ROOM=true;} //CHANGE SCREEN BASED ON WHETHER THE TUTORIAL IS DONE OR NOT
    cat = 10; //SELECT CAT
    catname="Mustachio"; //FORCEFULLY CHANGE NAME
    HAPPINESS=75; //SET VARIABLES ;)
    HUNGER=60;
    ENERGY=100;
    BUTTON=true; //PLAY SOUND
  } 
  //--------------------------------------------------------------------------------------------------------------------------------------------------//
  else if(SELECT2 && mouseX<190 && mouseX>30 && mouseY<440 && mouseY>300) {
    SELECT2 = false;
    NAME = true; //CHANGE SCREEN
    HAPPINESS=50; //RESET VARIABELS
    HUNGER=50;
    ENERGY=100;
    time = millis();
    time2 = millis();
    BUTTON=true; //PLAY SOUND
  } else if(SELECT2 && mouseX<380 && mouseX>220 && mouseY<440 && mouseY>300) {
    SELECT2 = false;
    NAME = true; //CHANGE SCREEN
    cat = cat + 3; //SELECT CAT
    HAPPINESS=50; //RESET VARIABLES
    HUNGER=50;
    ENERGY=100;
    time = millis();
    time2 = millis();
    BUTTON=true; //PLAY SOUND
  } else if(SELECT2 && mouseX<570 && mouseX>410 && mouseY<440 && mouseY>300) {
    SELECT2 = false;
    NAME = true; //CHANGE SCREEN
    cat = cat + 6; //SELECT CAT
    HAPPINESS=50; //RESET VARIABLES
    HUNGER=50;
    ENERGY=100;
    time = millis();
    time2 = millis();
    BUTTON=true; //PLAY SOUND
  } 
  //--------------------------------------------------------------------------------------------------------------------------------------------------//
  else if(NAME && mouseX<530 && mouseX>50 && mouseY<370 && mouseY>290) {INPUT = true;} //SELECT INPUT BOX
  else if(NAME) {INPUT=false;} //DESELECT INPUT BOX
  //--------------------------------------------------------------------------------------------------------------------------------------------------//
  else if(ROOM && mouseX<315 && mouseX>225 && mouseY<500 && mouseY>300 && HAPPINESS>10 && MEOW==false) { //CLICK ON CAT
    MEOW = true; //MEOWS
    MEOWONCE=true; //PLAYS SOUND ONLY ONCE IN DRAW()
    meowtimer=millis(); //SETS TIMER FOR MEOW
    feedmeow.stop(); //STOPS PLAYING SOUND IF IT WAS ALREADY PLAYING (AVOIDS MEMORY OVERLOAD) 
  }
  else if(ROOM && mouseX<200 && mouseX>100 && mouseY<590 && mouseY>500 && FISH>=10) { //FEED BUTTON
    if(HUNGER<95){ //CHANGES RESULT BASED ON HUNGER LEVEL
      HUNGER += 25; //INCREASE HEALTH
      ENERGY += 2; //INCREASE ENERGY
    } else {
      HAPPINESS += 10; //INCREASE HAPPINESS
      ENERGY -= 2; //DECREASE ENERGY
    }
    FISH -= 10; //REMOVES FISH
    feedmeow.stop(); //STOPS PLAYING SOUND IF IT WAS ALREADY PLAYING
    feedmeow.play(); //PLAYS SOUND
    BUTTON=true; //PLAY SOUND
  } else if(ROOM && mouseX<350 && mouseX>250 && mouseY<590 && mouseY>500 && ENERGY>=20) { //PLAY BUTTON
    ROOM = false;
    BUTTON=true; //PLAY SOUND
    if(TUTORIAL && TUTORIALCHECK2==false){TUTORIALPLAY=true;}
    else{
    PLAY = true; //CHANGE SCREEN BASED ON WHETHER THE TUTORIAL IS DONE OR NOT
    ENERGY-=20; //DECREASE ENERGY
    HAPPINESS+=10*ballmultiplier; //INCREASE HAPPINESS (INCREASES DOUBLE IF BALL IS BOUGHT)
    for(int i=0; i<7; i++) { //DECLARES VARIABLES
      if(i<1){ //ONLY ONE COIN
        objects[i] = new Object(int(random(0,width-70)),int(random(-1000,-100)),int(random(3,7)),int(random(1,3))*40,0);
      } else if(i<2){ //ONLY ONE FISH
        objects[i] = new Object(int(random(0,width-70)),int(random(-1000,-100)),int(random(3,7)),int(random(1,3))*40,1);
      } else { //FIVE BOMBS
        objects[i] = new Object(int(random(0,width-70)),int(random(-1000,-100)),int(random(3,7)),int(random(1,3))*40,2);
      }
    }}
  } else if(ROOM && mouseX<500 && mouseX>400 && mouseY<590 && mouseY>500 && COIN>=10 && ENERGY<100) { //REST BUTTON
    wait = millis(); //RESETS REST TIMER
    ROOM = false;
    REST = true; //CHANGE SCREEN
    COIN-=10; //REMOVES COINS
    if(restmultiplier==2){restpurr.play();} //PLAYS DIFFERENT SOUNDS BASED ON WHETHER PLAYER HAS A CUSHION
    else{restpurr1.play();} //^
    BUTTON=true; //PLAY SOUND
  } else if(ROOM && mouseX<110 && mouseX>10 && mouseY<100 && mouseY>10) { //MENU BUTTON
    ROOM = false;
    BUTTON=true; //PLAY SOUND
    MENU=true; //CHANGE SCREEN
  } 
  //--------------------------------------------------------------------------------------------------------------------------------------------------//
  else if(MENU && mouseX<110 && mouseX>10 && mouseY<100 && mouseY>10) { //CLOSE BUTTON
    MENU = false;
    ROOM = true; //CHANGE SCREEN
    BUTTON=true; //PLAY SOUND
  } else if(MENU && mouseX<435 && mouseX>165 && mouseY<225 && mouseY>135){ //SHOP BUTTON
    MENU = false;
    BUTTON=true; //PLAY SOUND
    SHOP=true; //CHANGE SCREEN
  } 
  //--------------------------------------------------------------------------------------------------------------------------------------------------//
  else if(SHOP && mouseX<110 && mouseX>10 && mouseY<100 && mouseY>10) { //CLOSE BUTTON
    SHOP = false;
    ROOM = true; //CHANGE SCREEN
    BUTTON=true; //PLAY SOUND
  } else if(SHOP && mouseX<190 && mouseX>20 && mouseY<580 && mouseY>110 && COIN>=10 && fishbone==0) { //FISHBONE BUTTON
    SHOP = false;
    ROOM = true; //CHANGE SCREEN
    fishbone = 1; //EARN FISHBONE
    COIN -= 10; //REMOVE COIN
    coinmultiplier++; //INCREASE COINS PER COIN
    fishmultiplier++; //INCREASE FISH PER FISH
    BUTTON=true; //PLAY SOUND
  } else if(SHOP && mouseX<380 && mouseX>210 && mouseY<580 && mouseY>110 && COIN>=50 && ball==0) { //BALL BUTTON
    SHOP = false;
    SELECTBALL = true; //CHANGE SCREEN
    COIN -= 50;
    ballmultiplier=2; //INCREASE HAPPINESS FROM GAMES
    coinmultiplier++; //INCREASE COINS PER COIN 
    BUTTON=true; //PLAY SOUND
  } else if(SELECTBALL && mouseX<190 && mouseX>20 && mouseY<370 && mouseY>230) { //RED BALL BUTTON
    SELECTBALL = false;
    ROOM = true; //CHANGE SCREEN
    ball = 1; //SELECT RED BALL
    BUTTON=true; //PLAY SOUND
  } else if(SELECTBALL && mouseX<380 && mouseX>210 && mouseY<370 && mouseY>230) { //GREEN BALL BUTTON
    SELECTBALL = false;
    ROOM = true; //CHANGE SCREEN
    ball = 2; //SELECT GREEN BALL
    BUTTON=true; //PLAY SOUND
  } else if(SELECTBALL && mouseX<570 && mouseX>400 && mouseY<370 && mouseY>230) { //BLUE BALL BUTTON
    SELECTBALL = false;
    ROOM = true; //CHANGE SCREEN
    ball = 3; //SELECT BLUE BALL
    BUTTON=true; //PLAY SOUND
  } else if(SHOP && mouseX<570 && mouseX>400 && mouseY<580 && mouseY>110 && COIN>=100 && cushion==0) { //CUSHION BUTTON
    SHOP = false;
    SELECTCUSHION = true; //CHANGE SCREEN
    COIN -= 100; //REMOVE COINS
    restmultiplier=1; //DECREASE REST TIME
    coinmultiplier++; //INCREASE COINS PER COIN
    BUTTON=true; //PLAY SOUND
  } else if(SELECTCUSHION && mouseX<190 && mouseX>20 && mouseY<370 && mouseY>230) { //RED CUSHION BUTTON
    SELECTCUSHION = false;
    ROOM = true; //CHANGE SCREEN
    cushion = 1; //SELECT RED CUSHION
    BUTTON=true; //PLAY SOUND
  } else if(SELECTCUSHION && mouseX<380 && mouseX>210 && mouseY<370 && mouseY>230) { //GREEN CUSHION BUTTON
    SELECTCUSHION = false;
    ROOM = true; //CHANGE SCREEN
    cushion = 2; //SELECT GREEN CUSHION
    BUTTON=true; //PLAY SOUND
  } else if(SELECTCUSHION && mouseX<570 && mouseX>400 && mouseY<370 && mouseY>230) { //BLUE CUSHION BUTTON
    SELECTCUSHION = false;
    ROOM = true; //CHANGE SCREEN
    cushion = 3; //SELECT BLUE CUSHION
    BUTTON=true; //PLAY SOUND
  } 
  //--------------------------------------------------------------------------------------------------------------------------------------------------//
  else if(MENU && mouseX<460 && mouseX>140 && mouseY<345 && mouseY>255) { //PAUSE BUTTON
    MENU = false;
    PAUSE = true; //CHANGE SCREEN
    BUTTON=true; //PLAY SOUND
  } 
  //--------------------------------------------------------------------------------------------------------------------------------------------------//
  else if(PAUSE && mouseX<360 && mouseX>240 && mouseY<355 && mouseY>245) { //RESUME BUTTON
    PAUSE = false;
    ROOM = true; //CHANGE SCREEN
    time = millis(); //RESET TIMERS
    time2 = millis();
    BUTTON=true; //PLAY SOUND
  } 
  //--------------------------------------------------------------------------------------------------------------------------------------------------//
  else if(MENU && mouseX<520 && mouseX>80 && mouseY<465 && mouseY>375) { //ABANDON BUTTON
    ABANDON=true; //CHANGE SCREEN
    BUTTON=true; //PLAY SOUND
    sadmusic.play(); //PLAY MUSIC
  } 
  //--------------------------------------------------------------------------------------------------------------------------------------------------//
  else if(ABANDON){
    ABANDON=false;
    cat=0; //RESET VARIABLE
    START=true; //CHANGE SCREEN
    BUTTON=true; //PLAY SOUND
    sadmusic.stop(); //STOP PLAYING MUSIC (AVOID MEMORY OVERLOAD)
  } 
  //--------------------------------------------------------------------------------------------------------------------------------------------------//
  else if(DEAD){
    DEAD=false;
    cat=0; //RESET VARIABLE
    START=true; //CHANGE SCREEN
    MUSIC=true; //RESET MUSIC PLAYING CHECK FOR DRAW() (NOT NEEDING FOR ABANDON BECAUSE MUSIC STARTS ON CLICK RATHER THAN WHEN THE SCREEN OPENS)
    BUTTON=true; //PLAY SOUND
    sadmusic.stop(); //STOP PLAYING MUSIC (AVOID MEMORY OVERLOAD)
  } 
  //--------------------------------------------------------------------------------------------------------------------------------------------------//
  else if(BORED){
    BORED=false;
    cat=0; //RESET VARIABLE
    HAPPINESS = 50; //RESET VARIABLE
    START=true; //CHANGE SCREEN
    MUSIC=true; //RESET MUSIC PLAYING CHECK FOR DRAW()
    BUTTON=true; //PLAY SOUND
    sadmusic.stop(); //STOP PLAYING MUSIC (AVOID MEMORY OVERLOAD)
  } 
  //--------------------------------------------------------------------------------------------------------------------------------------------------//
  else if(TUTORIALROOM) {
    TUTORIALROOM=false;
    TUTORIALCHECK1=true; //CHANGE CHECK MARKER
    ROOM=true; //CHANGE SCREEN
    time=millis(); //RESET TIMERS
    time2=millis();
    BUTTON=true; //PLAY SOUND
  } 
  //--------------------------------------------------------------------------------------------------------------------------------------------------//
  else if(TUTORIALPLAY) {
    TUTORIALPLAY=false;
    TUTORIALCHECK2=true; //CHANGE CHECK MARKER
    PLAY=true; //CHANGE SCREEN
    ENERGY-=20; //DECREASE ENERGY
    HAPPINESS+=10*ballmultiplier; //INCREASE HAPPINESS BY SET AMOUNT BASED ON WHETHER PLAYER OWNS A BALL
    BUTTON=true; //PLAY SOUND
    for(int i=0; i<7; i++) { //INITIALISE OBJECTS
      if(i<1){ //ONLY ONE COIN
        objects[i] = new Object(int(random(0,width-70)),int(random(-1000,-100)),int(random(3,7)),int(random(1,3))*40,0);
      } else if(i<2){ //ONLY ONE COIN
        objects[i] = new Object(int(random(0,width-70)),int(random(-1000,-100)),int(random(3,7)),int(random(1,3))*40,1);
      } else { //FIVE BOMBS
        objects[i] = new Object(int(random(0,width-70)),int(random(-1000,-100)),int(random(3,7)),int(random(1,3))*40,2);
      }
    }
  } 
}

//--------------------------------------------------------------------------------------------------------------------------------------------------//

void keyPressed(){
  //CHANGE CATNAME WHEN THE BOX IS SELECTED AND WHEN THE NAME IS LESS THAN 16 CHARACTERS
  if(INPUT && catname.length()<16) {
    //DON'T PLAY SOUND FOR KEYS SUCH AS SHIFT AND CAPSLOCK
    if(key!=CODED){typedletter.play();} 
    //INCREASE CATNAME FOR ALPHANUMERIC NUMBERS (SOME UNNECESSARY KEYS MAY STILL REACT AND LEAVE BOXES)
    if(key!=BACKSPACE && key!=ENTER && key!=RETURN && key!=CODED && catname.length()<15){catname+=key;} 
    //DELETE PREVIOUS INPUT
    else if(key==BACKSPACE){
      String catnamesave = catname; //SAVE THE CURRENT NAME TO USE IT'S VALUES WHILE MANIPULATING IT
      typedletter.play(); //PLAY SOUND
      catname = ""; //DELETE THE NAME FULLY
      for(int i=0;i<catnamesave.length()-1;i++){ //REBUILD THE NAME, OMMITTING THE LAST LETTER
        catname += catnamesave.charAt(i);
      }
    } 
    //MOVE TO NEXT SCREEN USING ENTER (WINDOWS) OR RETURN (MAC)
    else if(key==ENTER || key==RETURN){
      NAME=false;
      if(TUTORIAL && TUTORIALCHECK1==false){TUTORIALROOM=true;} //CHECK IF TUTORIAL HAS BEEN COMPLETE
      else{ROOM=true;} //CHANGE SCREEN BASED ON WHETHER TUTORIAL IS COMPLETE
      typedletter.play(); //PLAY SOUND
      //DOUBLE CHECKS ALL VARIABLES ARE RESET BEFORE PLAYER ENTERS GAME
      HAPPINESS=50; //RESET VARIABLES
      HUNGER=50;
      ENERGY=100; 
      time = millis();
      time2 = millis();
      INPUT=false;
    }
  }
  //ALLOWS PLAYER TO ENTER GAME WITHOUT SELECTING INPUT BOX AS LONG AS THEY HAVE ALREADY TYPED IN THE INPUT BOX
  if((key==ENTER && catname.length()>=1) || (key==RETURN && catname.length()>=1)){
      NAME=false;
      if(TUTORIAL && TUTORIALCHECK1==false){TUTORIALROOM=true;}
      else{ROOM=true;} //CHANGE SCREEN BASED ON WHETHER TUTORIAL IS COMPLETE
      typedletter.play(); //PLAY SOUND
      HAPPINESS=50; //RESET VARIABLES
      HUNGER=50;
      ENERGY=100;
      time = millis();
      time2 = millis();
      INPUT=false;
  }
}

//--------------------------------------------------------------------------------------------------------------------------------------------------//
