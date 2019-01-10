class Hands
{ 
  HourHand   m_hour;
  MinuteHand m_min;
  SecondHand m_sec;
  
  Hands(int diameter, color hourColor, color minuteColor, color secondColor)
  {
    m_hour = new HourHand(0.2*diameter, hourColor);
    m_min  = new MinuteHand(0.333*diameter, minuteColor);
    m_sec  = new SecondHand(0.4*diameter, secondColor, minuteColor);
  }
  
  void update()
  {
    m_hour.update();
    m_min.update();
    m_sec.update();
  }
  
  void display()
  {
    pushMatrix();
    rotate(- HALF_PI); //begins on the top
    
    m_hour.display();
    m_min.display();
    m_sec.display();
    
    popMatrix();
  }
  
  void setColors(color hourColor, color minuteColor, color secondColor)
  {
    m_hour.setColor(hourColor);
    m_min.setColor(minuteColor);
    m_sec.setColors(secondColor, minuteColor);    
  }
}
