trigger ContactTrigger on Contact (after insert, after update) 
{
    Set<Id> accIds = new Set<Id>();
    for(Contact con : Trigger.new)
    {
        accIds.add(con.accountid);
    }

    //Get all account contact related values
    Map<Id,Account> mapofAccIdToContacts = new Map<Id,Account>([SELECT Id,(Select Id From Contacts) From Account Where Id IN : accIds]);
    
    for(Contact con : Trigger.new)
    {
        if(mapofAccIdToContacts.get(con.accountID).Contacts.size() > 5) 
            con.addError('Cannot have more than  contacts per account');
    }
}