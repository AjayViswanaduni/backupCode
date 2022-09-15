public class ActiveContactBatchClass implements Database.Batchable<Sobject>{
   public  Database.QueryLocator start(Database.BatchableContext bc){
        string con = 'select ID,Name,Active__c from Contact where active__c=false';//dynamic query
       return Database.getQueryLocator(con);
    }
    Public void execute(Database.BatchableContext bc, List<Contact>cons){
        for(Contact c:cons){
            c.Active__c=true;
        }
        Database.update(cons, false);
    }
    public void finish(Database.BatchableContext bc){
        
    }
    
}