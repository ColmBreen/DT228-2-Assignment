class Totals
{
  void loadTotals()
  {
    int j;
    float countyTotal = 0.0;
    float[] yearTotalArr = new float[25];
    float yearTotal = 0.0;
    ArrayList<Float> countyTotals = new ArrayList<Float>();
    ArrayList<Float> yearTotals = new ArrayList<Float>();
    String[] lines = loadStrings("Excavations.csv");
    for (String s : lines)
    {
      yearTotal = 0.0;
      countyTotal = 0.0;
      String[] values = s.split(",");
      for(j = 0; j<values.length ; j++) 
      {
        float f = Float.parseFloat(values[j]);
        yearTotalArr[j] = yearTotalArr[j] + f;
        countyTotal = countyTotal + f;
      }
      for(j = 0; j < 25; j++)
      {
         yearTotal = yearTotalArr[j];
         yearTotals.add(yearTotal);
      }  
      countyTotals.add(countyTotal);
    }
    println(countyTotals.get(1));
    println(yearTotals.get(2));
  }
}
