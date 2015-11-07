class LoadData
{
  void loadExcavations()
  {
    String[] counties = {"Antrim", "Armagh", "Carlow", "Cavan", "Clare", 
                         "Cork", "Derry", "Donegal", "Down", "Dublin", 
                         "Fermanagh", "Galway", "Kerry", "Kildare", "kilkenny", 
                         "Laois", "Leitrim", "Limerick", "Longford", "Louth", 
                         "Mayo", "Meath", "Monaghan", "Offaly", "Roscommon", 
                         "Sligo", "Tipperary", "Tyrone", "Waterford", "Westmeath", 
                         "Wexford", "Wicklow"};
    // instantiate excavations container
    ArrayList<ArrayList<Float>> excavations = new ArrayList<ArrayList<Float>>();
    ArrayList<Float> v = new ArrayList<Float>(); 
    String[] lines = loadStrings("Excavations.csv");
    for (String s : lines)
    {
      // declare and instantiate list for this line
      v = new ArrayList<Float>();
      String[] values = s.split(",");
      // we start at 1 to skip the first value (the year)
      for (int j = 0; j<values.length ; j++) 
      {
        float f = Float.parseFloat(values[j]);
        // fill this (small) list 
        v.add(f);
      }
      // add the small list to the main one
      excavations.add(v);
    }
    println(excavations.get(2));
  }
}
