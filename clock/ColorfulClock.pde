class ColorfulClock
{ 
  Background    m_background;
  Frame         m_frame;
  Hands         m_hands;
  DigitalClock  m_digital;
  
  ColorfulClock(int diameter)
  {   
    // set default colors
    colorMode(HSB, 360, 100, 100);
    color backgroundColor  = color(180, 15, 90);
    color frameColor       = color(360, 75, 40);
    color detailsColor     = color(0);
    
    // set font
    PFont font = createFont("Arial Black", 20, true);
    textFont(font);
    
    m_background  = new Background(diameter, backgroundColor, detailsColor /*marks*/);
    m_frame       = new Frame(diameter, frameColor);   
    m_hands       = new Hands(diameter, detailsColor /*hour*/, detailsColor /*minutes*/, frameColor /*seconds*/);
    m_digital     = new DigitalClock(detailsColor);
  }
  
  void update()
  {
    m_hands.update();
    m_digital.update();
  }

  void display()
  {
    translate(width/2, height/2);
    
    m_background.display();
    m_frame.display();  
    m_hands.display();
    m_digital.display();
  } 
  
  void setColors(color backgroundColor, color frameColor, color detailsColor)
  {
    m_background.setColors(backgroundColor, detailsColor /*marks*/);
    m_frame.setColor(frameColor);   
    m_hands.setColors(detailsColor /*hour*/, detailsColor /*minutes*/, frameColor /*seconds*/);
    m_digital.setColor(detailsColor);
  }
}
