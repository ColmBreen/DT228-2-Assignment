class DrawAxis
{
  float xAxisM;
  float yAxisM;
  float xAxis;
  float yAxis;
  float xLineLength;
  int i;
  
  DrawAxis()
  {
    i = 0;
    xAxisM = (width/9);
    yAxisM = (height/15) * 14;
    xAxis = (width/9) * 8;
    yAxis = (height/15);
    xLineLength = (xAxis - xAxisM) / 5;
  }
  
  void drawing()
  {
    line(xAxisM, yAxisM, xAxis, yAxisM);
    for(i = 0; i < 6; i++)
    {
      line(xAxisM+(xLineLength*i), yAxisM, xAxisM+(xLineLength*i), yAxis * 14.5);
    }
  }
    
}

