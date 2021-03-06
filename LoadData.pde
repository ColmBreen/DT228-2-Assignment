class LoadData
{
  ArrayList<ArrayList<Float>> excavations;
  ArrayList<Float> v; 
  String[] lines;
  String[] counties = {"Antrim", "Armagh", "Carlow", "Cavan", "Clare", 
                "Cork", "Derry", "Donegal", "Down", "Dublin", 
                "Fermanagh", "Galway", "Kerry", "Kildare", "kilkenny", 
                "Laois", "Leitrim", "Limerick", "Longford", "Louth", 
                "Mayo", "Meath", "Monaghan", "Offaly", "Roscommon", 
                "Sligo", "Tipperary", "Tyrone", "Waterford", "Westmeath", 
                "Wexford", "Wicklow"};
  
  LoadData()
  {
    excavations = new ArrayList<ArrayList<Float>>();
    v = new ArrayList<Float>(); 
    lines = loadStrings("Excavations.csv");
  }
  
  void loadExcavations()
  {
    for (String s : lines)
    {
      // declare and instantiate list for this line
      v = new ArrayList<Float>();
      String[] values = s.split(",");
      for (int j = 0; j<values.length ; j++) 
      {
        float f = Float.parseFloat(values[j]);
        // fill this (small) list 
        v.add(f);
      }
      // add the small list to the main one
      excavations.add(v);
    }
  }
}