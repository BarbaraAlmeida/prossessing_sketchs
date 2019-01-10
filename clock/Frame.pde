class Frame
{
  int m_diameter;
  color m_color;
  
  Frame(int diameter, color col)
  {
    m_diameter = diameter;
    m_color = col;
  }
  
  void display() {
    noFill();
    stroke(m_color);
    
    // frame
    strokeWeight(0.1125*m_diameter);
    ellipse(0, 0, 1.14375*m_diameter, 1.14375*m_diameter);
    
    // circle
    strokeWeight(1); 
    stroke(m_color);
    ellipse(0, 0, m_diameter, m_diameter);
  }
  
  void setColor(color col)
  {
    m_color = col;
  }
}
