public class BatchClassAugustThree implements Database.Batchable<sobject>{
    public Database.QueryLocator start(Database.BatchableContext bc){
        return Database.getQueryLocator('select id,name from account');
    }
    
    public void execute(Database.BatchableContext bc,List<Account> subListFromStartMethod){
        for(Account acc:subListFromStartMethod){
            acc.Name = 'BC-'+ acc.Name;
        }
        Update subListFromStartMethod;
    }
    public void finish(Database.BatchableContext bc){
        system.debug('Batch Class Ran succesfully!!');
    }
}