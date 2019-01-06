ColorfulClock clock;

void setup()
{
  size(500, 500);  
  clock = new ColorfulClock(300);
}

void draw()
{
  background(360);
  
  clock.update();
  clock.display();
}

void mouseClicked()
{
  // generate new random colors
  float r = random(180);
  clock.setColors(color(r, 15, 90)         /*background*/,
                  color(r + 180, 75, 40)   /*canvas*/,
                  color(0)                 /*detaisl*/);
}
