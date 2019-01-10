class SecondHand
{
  float   m_size;
  int   m_color, m_detailsColor;
  float m_angle;
  
  SecondHand(float size, color col, color detailsColor)
  {
    m_size = size;
    setColors(col, detailsColor);
  }
  
  void display()
  {
    strokeCap(ROUND);
    strokeWeight(0.0167*m_size);
    stroke(m_color);
    
    line(0.1667*m_size*cos(m_angle+PI), 0.1667*m_size*sin(m_angle+PI), m_size*cos(m_angle), m_size*sin(m_angle));
    
    fill(m_detailsColor);
    ellipse(0, 0, 0.0833*m_size, 0.0833*m_size);
  }
  
  void update()
  {
    float decimalSecond = second();
    m_angle = map(decimalSecond, 0, 60, 0, TWO_PI);
  }
  
  void setColors(color col, color detailsColor)
  {
    m_color = col;
    m_detailsColor = detailsColor;
  }
  
}
