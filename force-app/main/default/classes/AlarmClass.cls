public class AlarmClass implements Schedulable{
   public void execute(SchedulableContext sc){
       Employee__c empsc1= new Employee__c();
       empsc1.Name = 'MJ';
       empsc1.Qualification__c = 'Btech';
   }
}