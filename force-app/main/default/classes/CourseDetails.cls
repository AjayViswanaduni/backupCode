public class CourseDetails {
    @AuraEnabled
    public static Course__c getCourse(string strCourse){
        return[SELECT ID,Name,Duration__c,Fee__c,Mode_Of_Training__c FROM Course__c WHERE Name=:strCourse limit 1];
    }
}