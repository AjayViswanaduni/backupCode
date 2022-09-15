public class AsyncRevision implements Database.Batchable<Employee__c>{
 
        Public Iterable<Employee__c> start(Database.BatchableContext bc){
            System.debug('I am in Start Method');
            List<Employee__c> my_emps = [select id,name,Salary__c from Employee__c];
           
            return my_emps;
        }
    public void execute(Database.BatchableContext bc, List<Employee__c> emps){
         for(Employee__c emp : emps){
             System.debug(emp.name);
                emp.Salary__c *= 1.5;
            }
        update emps;
        System.debug('I am in Execute Method');
    }
    public void finish(Database.BatchableContext bc){
        System.debug('I am in Finish Method');
        System.debug('Employee salary Incremented Successfully');
        
    }
        
    }