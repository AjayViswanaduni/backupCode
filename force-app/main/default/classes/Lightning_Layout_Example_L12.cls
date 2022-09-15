public class Lightning_Layout_Example_L12 {
   @auraEnabled
Public static List<Account> getAccounts(){
return[SELECT ID,Name,Phone,Industry FROM Account Limit 5];
}
@auraEnabled
Public static List<Contact> getContacts(){
return[SELECT ID,LastName,Email FROM Contact Limit 5];
}
}