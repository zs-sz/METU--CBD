public class COTY {
  int c = 0;
  int currentHead = 0;
  int maxItems = 0;
  String name = "";
  color hex = 0;

  JSONArray pantoneList;
  
  
  public void main(){
    init();
  }
   
  public void init() {
    pantoneList = loadJSONArray("pantone.json");
    maxItems = pantoneList.size();
     println(maxItems);
    processData();
  }
  
  private void processData() {
     JSONObject pantoneItem = pantoneList.getJSONObject(currentHead); 
     name = pantoneItem.getString("name");
     color r = Integer.parseInt(pantoneItem.getString("hex"), 16);
     hex = color(red(r), green(r), blue(r));
  }
  
  public void next() {
    currentHead = (currentHead + 1) % maxItems;
    println(currentHead);
    processData();
  };
  
  public void prev() {
    if(currentHead >= 0) {
      currentHead--;
    } else {
      currentHead = maxItems - 1;
    }
    processData();
  };
}
