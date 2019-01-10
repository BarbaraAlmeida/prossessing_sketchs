class DigitalClock
{
  color m_color;
  int   m_hour, m_minute, m_second;
  int   m_textSize;
  float   m_x, m_y;
  
  DigitalClock(float x, float y, int tsize, color col)
  {
    m_x = x;
    m_y = y;
    m_textSize = tsize;
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
    textSize(m_textSize);
    textAlign(CENTER, CENTER);
    text(m_hour + ":" + m_minute + ":" + m_second, m_x, m_y);
  }
  
  void setColor(color col)
  {
    m_color = col;
  }
}
