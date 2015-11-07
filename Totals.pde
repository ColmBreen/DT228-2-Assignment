class Totals
{
  void loadTotals()
  {
      Float countyTotal = 0.0;
      ArrayList<Float> countyTotals = new ArrayList<Float>();
      ArrayList<Float> v = new ArrayList<Float>(); 
      String[] lines = loadStrings("Excavations.csv");
      for (String s : lines)
      {
        countyTotal = 0.0;
        v = new ArrayList<Float>();
        String[] values = s.split(",");
        for (int j = 0; j<values.length ; j++) 
        {
          float f = Float.parseFloat(values[j]);
          countyTotal = countyTotal + f;
          v.add(f);
        }
        countyTotals.add(countyTotal);
      }
      println(countyTotals.get(2));
  }
}
