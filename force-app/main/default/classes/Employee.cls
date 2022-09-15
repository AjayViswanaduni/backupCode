//creating a class Employee
public class Employee {
    //define data members
    string Emp_name;
    Integer Emp_sal;
    String Emp_dept;
    string Emp_Qual;
    Long Emp_mobile;
    //end of dm
    //mm 
    //create
    //Input
     public void Input(string name,Integer sal,String dept,string Qual,Long mobile){
        Emp_name = name;
        Emp_sal = sal;
        Emp_dept = dept;
        Emp_Qual = Qual;
        Emp_mobile = mobile;
    }//end of input
    //process
    //output
    public void Output(){
        System.debug('Employee name :' +Emp_name);
        System.debug('Employee name :' +Emp_sal);
        System.debug('Employee name :' +Emp_dept);
        System.debug('Employee name :' +Emp_Qual);
        System.debug('Employee name :' +Emp_mobile);
        
    }//end of output method
    
}//end of class