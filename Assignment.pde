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

int menu = 0;

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
  //Sisplays the start screen so long as the mouse has not been clicked yet
  if(menu == 0)
  {
    background(0);
    rectMode(CENTER);
    stroke(255);
    noFill();
    rect(width/2, height/2, 400, 400);
    fill(255);
    rect(width/2, height/2, 200, 60);
    textSize(20);
    textAlign(CENTER);
    text("Archaeological Excavations in Ireland", width/2, height/6);
    text("1990 - 2014", width/2, (height/6)+25);
    textSize(15);
    text("Each bar in the bar charts can be clicked", width/2, (width/6)+75);
    text("to reveal the data which the bar represents", width/2, (width/6)+95);
    fill(0);
    text("Click here to begin", width/2, height/2);
  }
  else
  {
    //Resets rectMode and textAlign for rest of program
    textAlign(BASELINE);
    rectMode(CORNER);
    drawing.drawingBars(calculating.yearTotals, calculating.fiveYearTotals);
  }
}

void mouseClicked()
{
  //Checks which bar of the first graph has been clicked and passes that value to the DrawGraph class
  if(drawing.graph == 0 && menu != 0)
  {
    for(int i = 0; i < 5; i++)
    {
      float scale = map(calculating.fiveYearTotals[i], 0, 8500, drawing.yAxisM, drawing.yAxis);
      if(mouseX >= (drawing.xAxisM+(drawing.xLineLength*i)) && mouseX <= (drawing.xAxisM+(drawing.xLineLength*(i+1))) && mouseY <= drawing.yAxisM && mouseY >= scale)
      {
        drawing.graph = i+1;
      }
    }
  }
  else if(menu != 0)
  {
    //Checks which bar in the second graph has been clicked and passes that info to the drawWordle method in the DrawGraph class
    for(int i = 0; i < 5; i++)
    {
      if(drawing.graph == i+1)
      {
        int j = 5*(drawing.graph-1);
        for(int k = 0; k < 5; k++)
        {
          float scale = map(calculating.yearTotals[j], 0, 2550, drawing.yAxisM, drawing.yAxis);
          if(mouseX >= (drawing.xAxisM+(drawing.xLineLength*k)) && mouseX <= (drawing.xAxisM+(drawing.xLineLength*(k+1))) && mouseY <= drawing.yAxisM && mouseY >= scale)
          {
            drawing.drawWordle(loading.counties, calculating.countyTotals, j);
            break;
          }
          j++;
        }
      }
    }
  }
  //Set the menu variable to one so that the menu will not be displayed from now on
  menu = 1;
}