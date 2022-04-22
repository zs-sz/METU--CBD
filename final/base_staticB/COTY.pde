public class COTY {
  int c = 0;
  int currentHead = 0;
  int maxItems = 0;
  String name = "";
  color hex = 0;
  color r;
  JSONArray pantoneList;
  
  
  public void main(){
    init();
  }
   
  public void init() {
    pantoneList = loadJSONArray("pantone.json");
    maxItems = pantoneList.size();
    processData();
  }
  
  private void processData() {
     JSONObject pantoneItem = pantoneList.getJSONObject(currentHead); 
     name = pantoneItem.getString("name");
     r = Integer.parseInt(pantoneItem.getString("hex"), 16);
     hex = color(red(r), green(r), blue(r));
  }
  
  public void next() {
    currentHead = (currentHead + 1) % maxItems;
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
