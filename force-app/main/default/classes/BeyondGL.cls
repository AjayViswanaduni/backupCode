public class BeyondGL implements Database.Batchable<Course__c>{
//Interface can only have method prototypes 
 public Iterable<Course__c> start(Database.BatchableContext bc){
 //start method is to fetch records for processing
 List<Course__c> courses =[select id,name,Fee__c,Mode_Of_Training__c from Course__c];
 return courses;
 }
 public void execute(Database.BatchableContext bc, List<Course__c> crs){
 //process records by incrementing fee by 20%
  for(Course__c course: crs){
  course.Fee__c *= 1.2;
  }
  update crs;
 }
 public void finish(Database.BatchableContext bc){
 System.debug('Fees incremented succesfully');
 }
}