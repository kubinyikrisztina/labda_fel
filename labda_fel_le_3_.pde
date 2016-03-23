class Labda {
  float x;
  float y;
  float sugar;
  color szin;

  void rajzold_ki() {
    noStroke();
    fill(szin);
    ellipse(x, y, 2*sugar, 2*sugar);
  }
  void fel(float f) {
    y=y-1;
  }
  void le(float f) {
    y=y+2;
  }
  void jobbra(float f) {
    x=x+2;
  }
  void novekedjen(float f) {
    sugar=sugar+f;
  }
  boolean bent_van() {
    if (x>0+sugar && x<500-sugar && y>0+sugar && y<500-sugar) {
      return true;
    } else {
      return false;
    }
  }
}
Labda sarga_labda=new Labda();
Labda zold_labda=new Labda();
Labda pink_labda=new Labda();

void setup() {
  size(500, 500);

  sarga_labda.x=300;
  sarga_labda.y=300;
  sarga_labda.sugar=80;
  sarga_labda.szin=color(#FFEB08);

  zold_labda.x=150;
  zold_labda.y=150;
  zold_labda.sugar=120;
  zold_labda.szin=color(#5CBC26);

  pink_labda.x=400;
  pink_labda.y=400;
  pink_labda.sugar=50;
  pink_labda.szin=color(#FAB8D7);
}
void draw() {
  background(#FCFCFC);
  sarga_labda.rajzold_ki();
  zold_labda.rajzold_ki();
  pink_labda.rajzold_ki();

  pink_labda.novekedjen(1);
  sarga_labda.novekedjen(2);
  zold_labda.novekedjen(0.5);
  if (pink_labda.bent_van()) {
    pink_labda.fel(3);
  }
  if (zold_labda.bent_van()) {
    zold_labda.le(2);
  }
  if (sarga_labda.bent_van()) {
    sarga_labda.jobbra(0.5);
  }
}