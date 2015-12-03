class DrawGraph
{
  int graph = 0;
  int size = 0, loops = 0;
  float xAxisM;
  float yAxisM;
  float xAxis;
  float yAxis;
  float xLineLength;
  String[] years = {"1990-1994", "1995-1999", "2000-2004", "2005-2009", "2010-2014"};
  String[] sYears = {"1990", "1991", "1992", "1993", "1994", "1995", "1996", "1997", 
  "1998", "1999", "2000", "2001", "2002", "2003", "2004", "2005", "2006", "2007", "2008", 
  "2009", "2010", "2011", "2012", "2013", "2014"}; 
  int i, j;
  
  DrawGraph()
  {
    i = 0;
    xAxisM = (width/9);
    yAxisM = (height/19) * 18;
    xAxis = (width/9) * 8;
    yAxis = (height/19);
    xLineLength = (xAxis - xAxisM) / 5;
  }
  
  void drawing()
  {
    line(xAxisM, yAxisM, xAxis, yAxisM);
      j = 5 * (graph-1);
      for(i = 0; i < 6; i++)
      {
        line(xAxisM+(xLineLength*i), yAxisM, xAxisM+(xLineLength*i), yAxis * 18.5);
        if(graph == 0)
        {
          textSize(11);
          if(i < 5)
          {
            fill(0);
            text(years[i], xAxisM+(xLineLength*i+10), yAxis * 18.5);
          }
        }
        else
        {
          textSize(11);
          if(j < 5*graph)
          {
            fill(0);
            text(sYears[j], xAxisM+(xLineLength*i+10), yAxis * 18.5);
          }
          j++;
        }
      }
      textSize(11);
      if(graph == 0)
      {
        size = 500;
      }
      else if(graph < 6)
      {
        size = 150;
      }  
      line(xAxisM, yAxisM, xAxisM, yAxis);
      for(i = 0; i < 18; i++)
      {
        line(xAxisM, yAxisM-(yAxis*i), xAxisM-(xAxisM/4), yAxisM-(yAxis*i));
        fill(0);
        text((i*size), xAxisM-(xAxisM/1.3), yAxisM-((yAxis*i)-5)); 
      }
  }

  void drawingBars(float max, float[] yearTotals, float[] fiveYearTotals, ArrayList<Float> countyTotals)
  {
    float scale = 0;
    stroke(0);
    if(graph == 0)
    {
      background(255);
      fill(0);
      textSize(15);
      text("1990 - 2014", width/2.1, 20);
      for(i = 0; i < 5; i++)
      {
        fill(127, 127, 255);
        scale = map(fiveYearTotals[i], 0, 8500, yAxisM, yAxis);
        rect(xAxisM+(xLineLength*i), scale, xLineLength, (yAxisM - scale));     
      }
    }
    else
    {
      switch(graph)
      {
        case 1:
          background(255);
          j = 0;
          fill(0);
          textSize(15);
          text("1990 - 1994", width/2.1, 20);
          for(i = 0; i < 5; i++)
          {
            fill(255, 127, 127);
            scale = map(yearTotals[i], 0, 2550, yAxisM, yAxis);
            rect(xAxisM+(xLineLength*j), scale, xLineLength, (yAxisM - scale));
            j++;     
          }
          break;
        case 2:
          background(255);
          j = 0;
          fill(0);
          textSize(15);
          text("1995 - 1999", width/2.1, 20);
          for(i = 5; i < 10; i++)
          {
            fill(255, 127, 127);
            scale = map(yearTotals[i], 0, 2550, yAxisM, yAxis);
            rect(xAxisM+(xLineLength*j), scale, xLineLength, (yAxisM - scale));
            j++;    
          }
          break;
        case 3:
          background(255);
          j = 0;
          fill(0);
          textSize(15);
          text("2000 - 2004", width/2.1, 20);
          for(i = 10; i < 15; i++)
          {
            fill(255, 127, 127);
            scale = map(yearTotals[i], 0, 2550, yAxisM, yAxis);
            rect(xAxisM+(xLineLength*j), scale, xLineLength, (yAxisM - scale));
            j++;
          }
          break;
        case 4:
          background(255);
          j = 0;
          fill(0);
          textSize(15);
          text("2005 - 2009", width/2.1, 20);
          for(i = 15; i < 20; i++)
          {
            fill(255, 127, 127);
            scale = map(yearTotals[i], 0, 2550, yAxisM, yAxis);
            rect(xAxisM+(xLineLength*j), scale, xLineLength, (yAxisM - scale));
            j++;
          }
          break;
        case 5:
          background(255);
          j = 0;
          fill(0);
          textSize(15);
          text("2010 - 2014", width/2.1, 20);
          for(i = 20; i < 25; i++)
          {
            fill(255, 127, 127);
            scale = map(yearTotals[i], 0, 2550, yAxisM, yAxis);
            rect(xAxisM+(xLineLength*j), scale, xLineLength, (yAxisM - scale));
            j++;
          }
          break;
      }
    }
    drawing();
    fill(127, 0, 0);
    text("Back", 15, 15); 
    if(mousePressed)
    {
      if(mouseX > 5 && mouseX < 40 && mouseY > 5 && mouseY < 20)
      {
        graph = 0;
      }
    }    
  }

  void drawWordle(String[] counties)
  {
    for(int i = 0; i < counties.length; i++)
    {
      println(counties[i]);
    }
  }
}