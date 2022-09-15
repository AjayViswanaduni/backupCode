public with sharing class MapControllerLwc {
    @AuraEnabled(cacheable=true)
    public static List<Account> getAccounts(){
        return[SELECT Id,Name,Description,BillingStreet,BillingCountry,
                BillingCity,BillingState,
                BillingPostalCode FROM Account WHERE BillingState!=NULL];
    }
}