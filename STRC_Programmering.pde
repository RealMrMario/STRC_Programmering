Graf graf = new Graf();
dataLoader loadData = new dataLoader();
boolean skift = false; 
void setup() {

  size(800, 800);
  loadData.hentData();
}

void draw() {
if(skift == false){
  graf.display(loadData.listAlabama);
} else{
graf.display(loadData.listGeorgia);
}
}

void mousePressed() {
  background(255); 
  skift = !skift;
  graf.hentData(loadData.listAlabama);
  
}
