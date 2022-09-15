public with sharing class ContactsController {
    @AuraEnabled(cacheable=true)
    public static List<Contact> getContacts(){
        return[SELECT ID,FirstName,Description,MailingCity,MailingCountry,MailingStreet,MailingPostalCode,MailingState
                FROM Contact LIMIT 10];
    }
}