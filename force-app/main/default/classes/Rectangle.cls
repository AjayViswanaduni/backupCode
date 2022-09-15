//create a class for a rectngle
public class Rectangle {
//specify data members
   Integer length;
   Integer breadth;
   Static Integer count = 0;
    //member methods
    //create the constructor
    public Rectangle(){
        length = 0;
        breadth = 0;
        count++;
    }//end of constructor
    //creating a parameterised constructor 
    public Rectangle(Integer length,Integer breadth){
        this.length = length;
        this.breadth = breadth;
        count++;
    }//end of pc
    //input method
    public Integer calcArea(){
       Integer area = (length * breadth) ;
        System.debug('Area of rectangle is :' + area);
        return area;
        
    }
    public Integer calcPerimeter(){
    Integer pm = 2*(length+breadth);
        return pm;
    }
    //definition point
    public void setValues(Integer length,Integer breadth){//accept two values and load two values into it
        this.length = length;
        this.breadth = breadth;
    }//end of input method 
    //output method
    public static void getCount(){
      System.debug('No of objects existing are :' + count);   
        
    }
    public void getValues(){
    System.debug('Length of the rectangle is :' + length);
    System.debug('Breadth of the rectangle is :' + breadth);
    }//end of output method
    
}//end of business class