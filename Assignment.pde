void setup()
{
  size(500, 500);
  textAlign(CENTER);
  
  loading = new LoadData();
  calculating = new Totals();
  //loadData();
  Totals();
}

LoadData loading;
Totals calculating;

void loadData()
{
  loading.loadExcavations();
}

void Totals()
{
  calculating.loadTotals();
}
