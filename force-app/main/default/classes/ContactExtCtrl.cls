public class ContactExtCtrl {
       public List<Contact> conList{set;get;}
    public ContactExtCtrl(ApexPages.StandardSetController controller) {
    conList = [select id,firstName,lastName,email,birthDate from Contact];
    }

}