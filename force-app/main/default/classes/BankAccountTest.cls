@isTest//annotation that conveys to the ARE
public class BankAccountTest{//test class for the Business class of BankAccount
    public static testMethod void main(){
        //how to test the behaviour of business class
        //ClassName Obj_Name = new ClassName();
        //we have to invoke mm from Business class
        //calling point
        BankAccount ba1 = new BankAccount();//obj created
       /* ba1.getValues();//calling point
        ba1.setValues(180001232,'Ajay',100000);//calling point
        ba1.getValues();//calling point
        ba1.checkbalance();
        ba1.deposit(50000);
        ba1.checkbalance();
        ba1.withdraw(125000);
        ba1.checkbalance();*/
        ba1.setValues(5010604, 'AJ', 10000);
        ba1.getValues();
        ba1.withdraw(20000);
    } 
}