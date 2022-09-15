public class WrapperExample {
   Public List<WrapperClass> WrapList{set;get;} 
   //Constructor
       Public WrapperExample(){
       WrapList = new List<WrapperClass>();
       
       //adding the objects to the list
       wrapList.add(new WrapperClass());
       wrapList.add(new WrapperClass());
       wrapList.add(new WrapperClass());
    }
    //creating a method to addmore objects
    public void addMore(){
        wrapList.add(new WrapperClass());
    }
    //method to display the values 
    Public PageReference Submit(){
        PageReference pr = new PageReference('/apex/ViewProducts');
        return pr;
    }
    //Wrapper Class
    Public Class WrapperClass{
        Public string pname{set;get;}
        Public Integer qty{set;get;}
        Public Decimal price{set;get;}
    }
}