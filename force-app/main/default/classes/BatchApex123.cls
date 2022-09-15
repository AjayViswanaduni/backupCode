public class BatchApex123 implements Database.Batchable<course__c>{
    public Iterable<Course__c> start(Database.BatchableContext bc){
        return null;
    }
    public void execute(Database.BatchableContext bc, List<Course__c> crs){
        
    }
    public void finish(Database.BatchableContext bc){
        
    }
}