public class Addition_Controller {

    public PageReference division() {
        return null;
    }


    public PageReference product() {
        return null;
    }


    public PageReference diff() {
        return null;
    }

    Integer num1;
    Integer num2;
    Integer result;
    //constructor
    public Addition_Controller(){
    num1 = num2 = result = 0;
    }
    //normal method for setValues
    /*public void setValues(Integer n1,Integer n2,Integer res){
        num1 = n1;
        num2 = n2;
        result = res;
    }*/
    //now for custom controller we need to specify set method to every individual
    public void setnum1(Integer n1){
        num1 = n1;
    }
    public void setnum2(Integer n2){
        num2 = n2;
    }
    public void setresult(Integer res){
        result = res;
    }
    //process
    public void addition(){
        result = num1 + num2;
    }
    //output normal method
    /*public void getValues(){
        System.debug('Num1 = '+ num1);
        System.debug('Num2 = '+ num2);
        System.debug('Result = '+ result);
        
    }*/
    //for cc specify every individual output
    public Integer getnum1(){
     // System.debug('Num1 = '+ num1);  
     return num1;
    }
    public Integer getnum2(){
     // System.debug('Num2 = '+ num2);  
     return num2;
    }
    public Integer getresult(){
      //System.debug('Result = '+ result);  
      return result;
    }
    
    
}