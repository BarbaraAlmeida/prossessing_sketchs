class DigitalClock
{
  color m_color;
  int   m_hour, m_minute, m_second;
  
  DigitalClock(color col)
  {
    setColor(col);
  }
  
  void update()
  {
    m_hour    = hour();
    m_minute  = minute();
    m_second  = second();
  }
  
  void display()
  {
    fill(m_color);
    textSize(10);
    textAlign(CENTER, CENTER);
    text(m_hour + ":" + m_minute + ":" + m_second, 0, -80);
  }
  
  void setColor(color col)
  {
    m_color = col;
  }
}
