public class EmpDetails {
    @AuraEnabled
    public static Employee__c getEmp(String strEmp){
        return[SELECT ID,Name,Gender__c,Qualification__c,Date_Of_Joining__c,Salary__c FROM Employee__c WHERE Name =: strEmp limit 1];
    }

}