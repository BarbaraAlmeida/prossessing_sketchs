class Background
{
  Marks m_marks;
  int m_clockDiam;
  color m_backgroundColor;
  
  Background(int diam, color backgroundColor, color marksColor, PFont font)
  {
    m_marks = new Marks(diam, marksColor, font);
    m_clockDiam = diam;
    m_backgroundColor = backgroundColor;
  }
  
  void display() {
    fill(m_backgroundColor);
    noStroke();
    ellipse(0, 0, 1.033*m_clockDiam, 1.033*m_clockDiam);
    
    m_marks.display();
  }
  
  void setColors(color backgroundColor, color marksColor)
  {
    m_backgroundColor = backgroundColor;
    m_marks.setColor(marksColor);
  }
}
