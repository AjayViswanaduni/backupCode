public class ContactCreationQueueable implements Queueable{
    private List<Account> accListToCreateContacts;//data member or variable to store the list of records that comes from trigger
    	 
    public ContactCreationQueueable(List<Account> expectingAccountsFromTrigger){
        this.accListToCreateContacts = expectingAccountsFromTrigger;
    }
    public void execute(QueueableContext qc){
        List<Contact> consToCreate = new List<Contact>();//create a list of contacts
        for(Account acc:accListToCreateContacts){
            contact con = new Contact();
            con.AccountId = acc.Id;
            con.LastName = acc.Name;
            consToCreate.add(con);
        }
         if(consToCreate.size()>0)  
        insert consToCreate;
	
    }
}