public class CheckingKnowledgeClass {
    //Data Members
    Integer n1;
    Integer n2;
    //creating Default Constructor to initialise the values of dm
    //Constructor will not have any return type not even void
    Public CheckingKnowledgeClass(){
        n1 = 0;//initializing values from null to 0
        n2 = 0;
    }
    //creating parameterized constructor
    Public CheckingKnowledgeClass(Integer a, Integer b){
        n1 = a;
        n2 = b;
    }
    //Creating Input Method//same as parameterised constructor
    Public void setValues(Integer a, Integer b){
        n1 = a;
        n2 = b;
    }
    //Creating Some Action methods
    //we are not passing arguments because the data members are already defined, so we dont have to pass any other inputs
    //Method return type is Integer because the method is calculating some value and is not stored in data member
    Public Integer Addition(){
        Integer res = n1+n2;
        //whenever we do the action we need to return the value
        return res;
    }
    Public Integer Subtraction(){
        Integer res = n1-n2;
        //whenever we do the action we need to return the value
        return res;
    }
    Public Integer Multiplication(){
        Integer res = n1*n2;
        //whenever we do the action we need to return the value
        return res;
    }
    Public Integer Division(){
        Integer res = n1/n2;
        //whenever we do the action we need to return the value
        return res;
    }
}