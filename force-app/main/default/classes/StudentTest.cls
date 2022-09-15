@istest
public class StudentTest {
   public static @istest void main(){
   Student__c SFDC1 = new Student__c();
   SFDC1.Student_Name__c='Ajay';
   SFDC1.Qualification__c='Btech';
     insert SFDC1;
    }
}