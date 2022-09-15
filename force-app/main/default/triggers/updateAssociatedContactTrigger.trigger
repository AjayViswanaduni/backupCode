trigger updateAssociatedContactTrigger on Contact (after insert,after delete,after undelete) {
    //collecting the set of ids of contacts which are related to accounts
    set<Id> setAcctId = new set<Id>();
    //checking if event is insert or update
    if(trigger.isInsert || trigger.isUndelete){
        //iterating every contact and storing the values in trigger.new
        for(Contact con : trigger.new){
            //if the accountId are not null store the ids in set
            if(con.AccountId !=null){ 
                setAcctId.add(con.AccountId); 
            }
        }
    }
    
    //if the event is delete
    if(trigger.isDelete){ 
        for(Contact con : trigger.old){  
            //and if the ids are not null add the ids to the set
            if(con.AccountId !=null){ 
                setAcctId.add(con.AccountId);
            }
        }
    }
    //querying all the accounts and related contacts using the ids that are present in set
    list<Account> listAcct = [SELECT ID,(SELECT Id FROM Contacts) FROM Account WHERE Id IN :setAcctId]; 
    //iterating every account in the list and updating the associated_contacts__c field with size of the contacts related to acct
    for(Account acc : listAcct){ 
        acc.Associated_Contacts__c = acc.contacts.size(); 
    }   
    if(!listAcct.isEmpty()) 
        Update listAcct; 
}