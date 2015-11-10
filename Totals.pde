class Totals
{
  int i, j;
  float countyTotal;
  float[] yearTotals;
  ArrayList<Float> countyTotals;
  String[] lines;
  
  Totals()
  {
    i = 0;
    countyTotal = 0.0;
    yearTotals = new float[25];
    countyTotals = new ArrayList<Float>();
    lines = loadStrings("Excavations.csv");
  }
    
  void loadTotals()
  {
    for (String s : lines)
    {
      countyTotal = 0.0;
      String[] values = s.split(",");
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
    println(countyTotals.get(1));
    println(yearTotals[0]);
  }
}
