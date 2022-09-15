public with sharing class CsvControllerr {
    @AuraEnabled(cacheable=true)
    public static List<Account> getAccounts(){
        return[SELECT Id,Name,Phone,Industry,AnnualRevenue FROM Account];
    }
}