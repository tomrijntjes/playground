int boxsize = 60;
int boxx;
int boxy;
color[] palette = {#FFFF66, #FFB366, #FF6666, #FF66B3, #66FFB3, #66B3FF};

void setup(){
  jProcessingJS(this);
  noStroke();
  boxx = 1 + width / boxsize;
  boxy = 1 + height / boxsize;
  for (int i = 0; i < boxx; i++){
    for (int j = 0; j < boxy; j++){
      fill(palette[int(random(palette.length))]);
      rect(i*boxsize,j*boxsize,boxsize,boxsize);
      if (random(1)>0.5){
        fill(palette[int(random(palette.length))]);
        ellipse(i*boxsize,j*boxsize,boxsize,boxsize);
      }
      if (random(1)>0.5){
        fill(palette[int(random(palette.length))]);
        ellipse(i*boxsize,j*boxsize,boxsize/2,boxsize/2);
      }
      if (random(1)>0.5){
        fill(palette[int(random(palette.length))]);
        ellipse(i*boxsize,j*boxsize,boxsize/4,boxsize/4);
      }
    }
  }
}

void draw(){
  
}
