//"Antrim", "Armagh", "Carlow", "Cavan", "Clare", "Cork", "Derry", "Donegal", "Down", "Dublin", "Fermanagh", "Galway", "Kerry", "Kildare", "kilkenny", "Laois", "Leitrim", "Limerick", "Longford", "Louth", "Mayo", "Meath", "Monaghan", "Offaly", "Roscommon", "Sligo", "Tipperary", "Tyrone", "Waterford", "Westmeath", "Wexford", "Wicklow" 

void setup()
{
  size(500, 500);
  textAlign(CENTER);
  
  loadExcavations();
}

ArrayList<ArrayList<Float>> counties = new ArrayList<ArrayList<Float>>();

void loadExcavations()
{
  // instantiate airportData container
  ArrayList<ArrayList<Float>> excavations = new ArrayList<ArrayList<Float>>();
  String[] lines = loadStrings("Excavations.csv");
  int i = 0;
  for (String s : lines)
  {
    // declare and instantiate list for this line
    ArrayList<Float> v = new ArrayList<Float>();
    ArrayList<Float> county = new ArrayList<Float>();
    String[] values = s.split(",");
    // we start at 1 to skip the first value (the year)
    for (int j = 1; j<values.length ; j++) 
    {
      float f = Float.parseFloat(values[j]);
      // fill this (small) list 
      v.add(f);
    }
    // add the small list to the main one
    //println(v.get(1));
    county.add(v.get(0));
    println(county.get(0));
    excavations.add(v);
    i++;
  }
  // advantage of ArrayList: we can print them directly!
  //println(county.get(0));
}
