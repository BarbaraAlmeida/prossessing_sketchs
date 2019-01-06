class HourHand
{
  float m_angle;
  color m_color;
  int   m_size;

  HourHand(int size, color col)
  {
    m_size  = size;
    m_color = col;
  }
  
  void display()
  {       
    strokeCap(ROUND);
    strokeWeight(9);
    stroke(m_color);
    
    line(15*cos(m_angle+PI), 15*sin(m_angle+PI), m_size*cos(m_angle), m_size*sin(m_angle));   
  }
  
  void update()
  {
    float decimalHour = hour() + float(minute())/60 + float(second())/3600;
    decimalHour %= 12;
    m_angle = map(decimalHour, 0, 12, 0, TWO_PI);
  }
  
  void setColor(color col)
  {
    m_color = col;
  }
}
