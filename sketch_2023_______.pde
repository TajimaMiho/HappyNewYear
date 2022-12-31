PImage[] image = new PImage[22];
float[] iw = new float[21];
float[] ih = new float[21];
float[] ipw = new float[21];
float[] iph = new float[21];
int ms = 0;
int k = 0;

void setup(){
  frameRate(30);
  size(1050, 760);
  background(255);
  PFont font = createFont("Osaka", 40);
  textFont (font);
  for (int i = 0; i < 21; i++) {
    if(i%5 == 0){
      ipw[i] = random(-200, 210);//210
    }
    else if(i%5 == 1){
      ipw[i] = random(210, 420);//350
      //iph[i] = random(132, 264);//253
    }
    else if(i%5 == 2){
      ipw[i] = random(420, 630);//350
      //iph[i] = random(264, 396);//253
    }
    else if(i%5 == 3){
      ipw[i] = random(630, 980);//350
      //iph[i] = random(396, 649);//253
    }
    else if(i%5 == 4){
      ipw[i] = random(980, 1100);//350
      //iph[i] = random(628, 760);//253
    }
    iw[i] = random(250, 450);
    iph[i] = random(-200, 740);//253
    image[i] = loadImage(i+1 + ".jpeg");
    image[i].resize(int(iw[i]), int(iw[i] * 1.3));
   // image[22] = loadImage(i+1 + ".jpeg");
    image[i].resize(1050, 760);
  }
}

void draw() {
  int y = year();
  int h = hour();
  int m = minute();
  int s = second();
  int cs, cm, ch;
  s += m*60 + h* 3600;
  cs = 3600 * 24 - s;
  ch = cs/3600;
  cs = cs%3600;
  cm = cs/60;
  cs = cs%60;
  
  fill(0);
  background(255);
  textSize(30);
  text((y+1) + "年まであと..." + ch + ":" + cm + ":" + cs, width/2, height/2+130);
  textAlign(CENTER, CENTER);
  textSize(200);
  fill(#FC9EF0);
  text(y, width/2, height/2-50);
  ms++;
}
