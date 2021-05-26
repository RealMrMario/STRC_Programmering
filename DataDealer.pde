class dataLoader {
  Table table;
  ArrayList<Data> listAlabama = new ArrayList<Data> ();
  ArrayList<Data> listGeorgia = new ArrayList<Data> ();
  void hentData() {
    table = loadTable("https://raw.githubusercontent.com/nytimes/covid-19-data/master/us-states.csv");

    for (TableRow row : table.rows()) {
      
      //println(row.getString(1),row.getString(1).equals("Alabama"));

      if(row.getString(1).equals("Alabama")){

     
      Data d = new Data();
      d.cases = row.getInt(3);
      d.deaths = row.getInt(4);
      listAlabama.add(d);
      }
      if(row.getString(1).equals("Georgia")){
      
      Data f = new Data();
      f.cases = row.getInt(3);
      f.deaths = row.getInt(4);
      listGeorgia.add(f);
      }
    }
  }
}
