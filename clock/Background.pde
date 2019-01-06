class Background
{
  Marks m_marks;
  int m_clockDiam;
  color m_backgroundColor;
  
  Background(int diam, color backgroundColor, color marksColor)
  {
    m_marks = new Marks(diam, marksColor);
    m_clockDiam = diam;
    m_backgroundColor = backgroundColor;
  }
  
  void display() {
    fill(m_backgroundColor);
    noStroke();
    ellipse(0, 0, m_clockDiam + 10, m_clockDiam + 10);
    
    m_marks.display();
  }
  
  void setColors(color backgroundColor, color marksColor)
  {
    m_backgroundColor = backgroundColor;
    m_marks.setColor(marksColor);
  }
}
