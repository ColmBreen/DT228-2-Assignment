void setup()
{
  size(500, 500);
  //textAlign(CENTER);
  background(255);
  stroke(0);
  fill(0);
  
  loading = new LoadData();
  calculating = new Totals();
  drawing = new DrawGraph();
  loadData();
  Totals();
}

DrawGraph drawing;
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

void draw()
{
  drawing.drawingBars(calculating.max, calculating.yearTotals, calculating.fiveYearTotals, calculating.countyTotals);
}
