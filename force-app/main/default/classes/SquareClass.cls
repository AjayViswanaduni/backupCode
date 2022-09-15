public class SquareClass {
    //Data Members
    //Member methods=>Input,Process,Action,Output
    Integer Length;
    Integer Breadth;
    //Creating Default Constructor
    //It is used to replace the null values to safe
    Public SquareClass(){
        Length = 0;
        Breadth = 0;
    }
    //Creating Parameterised Consructor
    //It loads meaningful values
    Public SquareClass(Integer len,Integer bth){
        Length = len;
        Breadth = bth;
    }
    //Input method
    Public Void setValues(Integer len,Integer bth){
        Length = len;
        Breadth = bth;
    }
    //Action
    Public Integer CalcArea(){
        Integer Area = length * breadth;
        return Area;
        
    } 
    
    //Output method
    Public Void getValues(){
        System.debug('Length = ' +length + 'Breadth =' +breadth);
    }
}