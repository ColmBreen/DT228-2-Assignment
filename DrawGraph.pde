class DrawGraph
{
  Totals calculating;
  float xAxisM;
  float yAxisM;
  float xAxis;
  float yAxis;
  float xLineLength;
  String[] years = {"1990-1994", "1995-1999", "2000-2004", "2005-2009", "2010-2014"};
  int i;
  
  DrawGraph()
  {
    calculating = new Totals();
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
    for(int i = 0; i < 5; i++)
    {
      fill(random(255), random(255), random(255));
      float scale = map(fiveYearTotals[i], 0, 8500, yAxisM, yAxis);
      rect(xAxisM+(xLineLength*i), scale, xLineLength, (yAxisM - scale));
    }
  }
}

