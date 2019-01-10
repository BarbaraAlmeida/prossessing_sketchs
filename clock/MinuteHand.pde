class MinuteHand
{  
  float m_angle;
  color m_color;
  float   m_size;
  
  MinuteHand(float size, color col)
  {
    m_size  = size;
    m_color = col;
  }
  
  void display()
  {    
    strokeCap(ROUND);
    strokeWeight(0.05*m_size);
    stroke(m_color);
    
    line(0.15*m_size*cos(m_angle+PI),0.15*m_size*sin(m_angle+PI), m_size*cos(m_angle), m_size*sin(m_angle));
  }
  
  void update()
  {
    float decimalMinute = minute() + float(second())/60;
    m_angle = map(decimalMinute, 0, 60, 0, TWO_PI);  //find the correspondent angle
  }
  
  void setColor (color col)
  {
    m_color = col;
  }
}
