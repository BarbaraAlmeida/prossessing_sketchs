class Marks
{
  color     m_color;
  int       m_diameter;
  PGraphics m_pg;
  
  Marks(int diameter, color col)
  {
    m_color = col;
    m_diameter  = diameter;
    m_pg    = createGraphics(diameter, diameter); 
    
    createMarks();
  }
  
  void display()
  {
    imageMode(CENTER);
    image(m_pg, 0, 0);
  }
  
  void setColor(color col)
  {
    if (m_color != col)
    {
      m_color = col;
      createMarks();
    }
  }
  
  void createMarks()
  {
    m_pg.beginDraw();
    m_pg.translate(m_diameter/2, m_diameter/2);
    createMinutesLines();
    createHoursLines();
    createHoursNumbers();
    createCenter();
    m_pg.endDraw();
  }
  
  void createMinutesLines()
  {
    float radius = m_diameter/2 - 10;
    float angle = 0;
   
    m_pg.strokeWeight(2);
    m_pg.stroke(m_color);
    m_pg.pushMatrix();
    for(int i = 0; i < 60; i++)
    {    
      m_pg.rotate(radians(angle));    
      m_pg.strokeCap(SQUARE);
      m_pg.line(radius, 0, radius - 10, 0);                
      angle = 6;
    }
    m_pg.popMatrix();
  }
  
  
  void createHoursLines()
  {
    int radius = m_diameter/2 - 10;
    int angle = 0;
    
    m_pg.strokeWeight(5);
    m_pg.stroke(m_color);
    m_pg.pushMatrix();
    for(int i = 0; i < 12; i++)
    {
      m_pg.rotate(radians(angle));     
      m_pg.strokeCap(SQUARE);
      m_pg.line(radius, 0, radius - 15, 0);           
      angle = 30;
    }
    m_pg.popMatrix();
  }
  
  void createHoursNumbers()
  {
    int radius;
    float x, y;
    float angle = - radians(60); //begins on 1
    
    m_pg.fill(m_color);
    m_pg.textAlign(CENTER, CENTER);
    for(int i = 1; i < 13; i++)
    {       
      radius = m_diameter/2 - 40;

      x = radius * cos(angle);
      y = radius * sin(angle);
      
      m_pg.textSize(i % 3 != 0 ? m_diameter/20 : m_diameter/10); // bigger 3 6 9 12
      m_pg.text(i, x, y);
      
      angle += radians(30);
    }
  }
  
  void createCenter() { // display a small circle in the center
    m_pg.noStroke();
    m_pg.fill(m_color);
    m_pg.ellipse(0, 0, 20, 20); 
  }
}
