public without sharing class LightningDataTable {
@AuraEnabled(cacheable=true)
    Public static List<Contact> getContacts(){
        
        List<Contact> v1 = [Select Id,LastName,Email from Contact WITH SECURITY_ENFORCED Limit 10];
        return v1;
    }
}