public class CalculatorClass {
    //Data Members
    Integer n1;
    Integer n2;
    //Creating Default Constructor
    Public CalculatorClass(){
        n1 = 0;
        n2 = 0;
    }
    //Creating Parameterised Constructor
    Public CalculatorClass(Integer num1,Integer num2){
        n1 = num1;
        n2 = num2;
    }
    //Creating Input method
    Public Void setValues(Integer num1,Integer num2){
        n1 = num1;
        n2 = num2;
}
    //Action=>additon
    Public Integer add(){
    Integer result = n1 + n2;
     return result;
    }
    //Action=>Production
    Public Integer prod(){
    Integer result = n1 * n2;
     return result;
    }
    
}