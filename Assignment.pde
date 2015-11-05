//"Antrim", "Armagh", "Carlow", "Cavan", "Clare", "Cork", "Derry", "Donegal", "Down", "Dublin", "Fermanagh", "Galway", "Kerry", "Kildare", "kilkenny", "Laois", "Leitrim", "Limerick", "Longford", "Louth", "Mayo", "Meath", "Monaghan", "Offaly", "Roscommon", "Sligo", "Tipperary", "Tyrone", "Waterford", "Westmeath", "Wexford", "Wicklow" 

void setup()
{
  size(500, 500);
  textAlign(CENTER);
  
  loading = new LoadData();
  loadData();
}

LoadData loading;

void loadData()
{
  loading.loadExcavations();
}
