@istest
public class CollectionSoql {
    public static @istest void main(){
  List<Contact> con = [select id,name,account.name from contact where Department = 'Administration'];
    
    for (Contact cons:con)
    {
   System.debug('Contacts  are:'+ cons);
    }
    }
}