public class BatchApexOct implements Database.Batchable<Course__c> {
    public  Iterable<Course__c> start(Database.BatchableContext bc){
        return null;
    }
    public void execute(Database.BatchableContext bc, List<Course__c> crs){
        
    }
    public void finish(Database.BatchableContext bc){
        
    }
}