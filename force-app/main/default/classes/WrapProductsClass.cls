public class WrapProductsClass {
    Public List<WrapClass> wrapList{set;get;}
    //constructor
    Public WrapProductsClass(){
        wrapList = new List<WrapClass>();
        
        //adding objects to the list
        wrapList.add(new WrapClass());
        wrapList.add(new WrapClass());
        wrapList.add(new WrapClass());
    }
    //if we want to add few more objects opionally, we create the following method
    public void addRow(){
        wrapList.add(new WrapClass());
    }
  //Create Wrap Class
    Public class WrapClass{
        public string pname{set;get;}
        public Integer qty{set;get;}
        public Decimal price{set;get;}
    }
}