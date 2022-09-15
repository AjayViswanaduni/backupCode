public class BeyondGL_2 implements Database.Batchable<sObject>{
//Interface can only have method prototypes 
 public Database.QueryLocator start(Database.BatchableContext bc){
     System.debug('I am from Start Method');
 //start method is to fetch records for processing
 String str = 'select id,name,Fee__c,Mode_Of_Training__c from Course__c';
 return Database.getQueryLocator(str);
 }
 public void execute(Database.BatchableContext bc, List<Course__c> crs){
     System.debug('I am from Execute Method');
 //process records by incrementing fee by 20%
  for(Course__c course: crs){
      System.debug(course.name);
  course.Fee__c *= 1.2;
  }
  update crs;
 }
 public void finish(Database.BatchableContext bc){
     System.debug('I am from Finish Method');
 System.debug('Fees incremented succesfully');
 }
}