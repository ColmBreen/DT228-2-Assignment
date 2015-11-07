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
