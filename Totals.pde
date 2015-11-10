class Totals
{
  int i, j, k;
  float max, fiveYears;
  float countyTotal;
  float[] yearTotals, fiveYearTotals;
  ArrayList<Float> countyTotals;
  String[] lines, values;
  
  Totals()
  {
    i = 0;
    max = 0;
    fiveYears = 0;
    countyTotal = 0.0;
    fiveYearTotals = new float[5];
    yearTotals = new float[25];
    countyTotals = new ArrayList<Float>();
    lines = loadStrings("Excavations.csv");
  }
    
  void loadTotals()
  {
    for (String s : lines)
    {
      countyTotal = 0.0;
      values = s.split(",");
      for(j = 0; j<values.length ; j++) 
      {
        float f = Float.parseFloat(values[j]);
        if(i == 33)
        {
          yearTotals[j] = f;
        }
        countyTotal = countyTotal + f;
      }  
      countyTotals.add(countyTotal);
      i++;
    }
    j = 0;
    for(i = 1; i < values.length; i++)
    {
      if((i-1) == 0 || (i-1) == 5 || (i-1) == 10 || (i-1) == 15 || (i-1) == 20)
      {
        for(k = (i-1); k < (i-1) + 5; k++)
        {
          fiveYears = fiveYears + yearTotals[k];
        }
        fiveYearTotals[j] = fiveYears;
        fiveYears = 0; 
        j++;
      }    
      if(yearTotals[i] > yearTotals[i-1])
      {
        max = yearTotals[i];
      }
    }
  }
}
