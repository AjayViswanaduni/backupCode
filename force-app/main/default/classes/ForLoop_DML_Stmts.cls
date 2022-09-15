@istest
public class ForLoop_DML_Stmts {
    public static testMethod void main(){
        Employee__c emp1 = new Employee__c();
        emp1.Name = 'Ani';
        emp1.Qualification__c = 'MBA';
        emp1.Salary__c = 123456;

        Employee__c emp2 = new Employee__c();
        emp2.Name = 'Ritu';
        emp2.Qualification__c = 'MCA';
        emp2.Salary__c = 123426;
       
        Employee__c emp3 = new Employee__c();
        emp3.Name = 'Balu';
        emp3.Qualification__c = 'MBA';
        emp3.Salary__c = 123456;
        
        Employee__c emp4 = new Employee__c();
        emp4.Name = 'Babu';
        emp4.Qualification__c = 'MBA';
        emp4.Salary__c = 123456;
        
        Employee__c emp5 = new Employee__c();
        emp5.Name = 'Bheeshma';
        emp5.Qualification__c = 'MBA';
        emp5.Salary__c = 123456;
       
   List<Employee__c> my_emps= [select id,Name,Date_Of_Joining__c,Experience_in_years__c,Gender__c,Project_Name__c,Qualification__c,Salary__c from Employee__c];
   System.debug('My Employees are :' + my_emps);
       }
}