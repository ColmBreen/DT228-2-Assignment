class Totals
{
  void loadTotals()
  {
    int i = 0, j;
    float countyTotal = 0.0;
    float[] yearTotals = new float[25];
    ArrayList<Float> countyTotals = new ArrayList<Float>();
    String[] lines = loadStrings("Excavations.csv");
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
