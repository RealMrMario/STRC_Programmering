class Graf {

  void display(ArrayList<Data> list) {
    int x =0;
    int y = 0;
    for (Data d : list) {
      y= y + 1;
      //x =x +1;
      rect(x, y,d.deaths*0.2, 1);
    }
  }

  void hentData(ArrayList<Data> list) {
    Data d = list.get(mouseY);
    println(d.deaths);
  }
}
