public class Create_course_Output {
@AuraEnabled
    public static string InsertCrs(Course__c objA){
        try{
            insert objA;
            return objA.id;
        }
        catch(Exception e){
            return 'Error';
        }
    }
}