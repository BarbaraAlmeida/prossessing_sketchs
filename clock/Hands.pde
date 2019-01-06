class Hands
{ 
  HourHand   m_hour;
  MinuteHand m_min;
  SecondHand m_sec;
  
  Hands(int diameter, color hourColor, color minuteColor, color secondColor)
  {
    m_hour = new HourHand(diameter/2 - 90, hourColor);
    m_min  = new MinuteHand(diameter/2 - 50, minuteColor);
    m_sec  = new SecondHand(diameter/2 - 30, secondColor, minuteColor);
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
