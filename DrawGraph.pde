class DrawGraph
{
  boolean[] check = new boolean[5];
  int graph = 0;
  float xAxisM;
  float yAxisM;
  float xAxis;
  float yAxis;
  float xLineLength;
  String[] years = {"1990-1994", "1995-1999", "2000-2004", "2005-2009", "2010-2014"};
  int i;
  
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
    for(i = 0; i < 6; i++)
    {
      line(xAxisM+(xLineLength*i), yAxisM, xAxisM+(xLineLength*i), yAxis * 18.5);
      if(i < 5)
      {
        text(years[i], xAxisM+(xLineLength*i+10), yAxis * 18.5);
      }
    }
    
    line(xAxisM, yAxisM, xAxisM, yAxis);
    for(i = 0; i < 18; i++)
    {
      line(xAxisM, yAxisM-(yAxis*i), xAxisM-(xAxisM/4), yAxisM-(yAxis*i));
      text((i*500), xAxisM-(xAxisM/1.3), yAxisM-((yAxis*i)-5)); 
    }
  }

  void drawingBars(float max, float[] yearTotals, float[] fiveYearTotals, ArrayList<Float> countyTotals)
  {
    float scale;
    int i, j;
    if(mousePressed)
    {
      for(i = 0; i < 5; i++)
      {
        scale = map(fiveYearTotals[i], 0, 8500, yAxisM, yAxis);
        if(mouseX >= (xAxisM+(xLineLength*i)) && mouseX <= (xAxisM+(xLineLength*(i+1))) && mouseY <= yAxisM && mouseY >= scale)
        {
          graph = i+1;
        }
      }
    }
    for(i = 0; i < 5; i++)
    {
      fill(127);
      scale = map(fiveYearTotals[i], 0, 8500, yAxisM, yAxis);
      rect(xAxisM+(xLineLength*i), scale, xLineLength, (yAxisM - scale));     
    }
    switch(graph)
    {
      case 1:
        background(255);
        j = 0;
        for(i = 0; i < 5; i++)
        {
          fill(127);
          scale = map(yearTotals[i], 0, 2500, yAxisM, yAxis);
          rect(xAxisM+(xLineLength*j), scale, xLineLength, (yAxisM - scale));
          j++;     
        }
        break;
      case 2:
        background(255);
        j = 0;
        for(i = 5; i < 10; i++)
        {
          fill(127);
          scale = map(yearTotals[i], 0, 2500, yAxisM, yAxis);
          rect(xAxisM+(xLineLength*j), scale, xLineLength, (yAxisM - scale));
          j++;    
        }
        break;
      case 3:
        background(255);
        j = 0;
        for(i = 10; i < 15; i++)
        {
          fill(127);
          scale = map(yearTotals[i], 0, 2500, yAxisM, yAxis);
          rect(xAxisM+(xLineLength*j), scale, xLineLength, (yAxisM - scale));
          j++;
        }
        break;
      case 4:
        background(255);
        j = 0;
        for(i = 15; i < 20; i++)
        {
          fill(127);
          scale = map(yearTotals[i], 0, 2500, yAxisM, yAxis);
          rect(xAxisM+(xLineLength*j), scale, xLineLength, (yAxisM - scale));
          j++;
        }
        break;
      case 5:
        background(255);
        j = 0;
        for(i = 20; i < 25; i++)
        {
          fill(127);
          scale = map(yearTotals[i], 0, 2500, yAxisM, yAxis);
          rect(xAxisM+(xLineLength*j), scale, xLineLength, (yAxisM - scale));
          j++;
        }
        break;
    }
    drawing();       
  }  
}

