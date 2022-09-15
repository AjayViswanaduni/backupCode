public class TriggerNotes {
    //We have two types of triggers=>Before And After
    //We have=> Insert,Update,Delete,Undelete DML actions in Triggers
    //Events=> Before Insert,Before Update,Before Delete,After Insert,After Update,After Delete,After Undelete 
    /*Important points to consider while creating a Trigger.
      On which object we will write a trigger.
      On which event I will use (out of 7 events) 
      Which DML (Insert, update, delete, undelete)*/
    
    /*Trigger.New 
The records which are moving towards database either from front end(one record) or from back end (more than one record)
In case of update, the new/updated copy will be stored in trigger.new
If we are using account trigger, trigger.new will have list<Account>*/
    
    // insert=>trigger.new,trigger.newMap
    // update=>trigger.new,trigger.newMap=new data/updated data || trigger.old,trigger.oldMap= old|previous data
    // delete=>trigger.old,trigger.oldMap
    // undelete=>trigger.new,trigger.newMap
    //before insert=> trigger.new
    //after insert=>trigger.new,trigger.newMap
    //before update=>trigger.old,trigger.oldMap,trigger.new,trigger.newMap
    //after update=>trigger.old,trigger.oldMap,trigger.new,trigger.newMap
    //before delete=>trigger.old,trigger.Oldmap
    //after delete=>trigger.old,trigger.oldMap
    //after undelete=> trigger.new,trigger.newMap
    /*trigger contactTrigger on Contact (after insert,after update,after delete,after undelete) {
    set<Id> setAccId = new set<Id>();
    if(trigger.isInsert || trigger.isUndelete){ // checking the insert event or undelete event
        for(Contact con : trigger.new){ // bulkifying or iterating the elements in trigger.new
            if(con.AccountId !=null){ // checking the contact has accountId or not
                setAccId.add(con.AccountId); //adding the account Id of the contact to the setAccId.
            }
        }
    }
    if(trigger.isUpdate){ // check if the DML is update
        for(Contact con:trigger.new){ //iterating the elements in trigger.new
            Contact oldRecord = trigger.OldMap.get(con.Id);  //getting the old record related to current record from map
  if(con.AccountId !=null && con.AccountId != oldRecord.AccountId){ // we are comparing the new and old value for accountId
                setAccId.add(con.AccountId); // adding the account Id
                setAccId.add(oldRecord.AccountId);
            }
        } 
    }
    if(trigger.isDelete){ // check if the DML is  delete
        for(Contact con : trigger.old){  //  iterating the elements in trigger.old
            if(con.AccountId !=null){ 
                setAccId.add(con.AccountId);
            }
        }
    }
    
    //getting all the account records with the contacts based on the account Ids we stored in the set from database.
   list<Account> listAccount = [SELECT ID,(SELECT Id FROM Contacts) FROM Account WHERE Id IN :setAccId]; 
       
    for(Account acc : listAccount){ //iterating the  list of records retrived from database
        acc.Contacts_Count__c = acc.contacts.size(); // assigning the  contacts count to the account field
     }   
    if(!listAccount.isEmpty()) Update listAccount; // checking the list is empty or  not before doing DML
    //if(listAccount.size()>0) Update listAccount;
    
    
    
    list<AggregateResult> listAgg = [select count(Id) tot,AccountId accId  FROM Contact WHERE AccountId IN : setAccId Group By AccountId];
    
    list<Account> listAccToUpdate = new list<Account>();
    for(AggregateResult ar : listAgg){
        Account acc = new Account();
        acc.Id = (Id) ar.get('accId');
        acc.Contacts_Count__c = (Integer) ar.get('tot');
        listAccToUpdate.add(acc) ;
    }
  if(!listAccToUpdate.isEmpty()) Update listAccToUpdate;
    
    
}
//if the event is update
    if(trigger.isUpdate){ 
        //iterating every contact and storing the new values in trigger.new
        for(Contact con:trigger.new){ 
            // creating an instance of contact and storing old ids using trigger.oldMap
            //Contact oldRecord = trigger.OldMap.get(con.Id);  
            //if the ids are not null and the ids are not equal to oldrecord id,then add the ids to the set
            //if(con.AccountId !=null && con.AccountId != oldRecord.AccountId){ 
                if(con.AccountId !=null){
                setAcctId.add(con.AccountId); 
                //setAcctId.add(oldRecord.AccountId);
            }
        } 
    }*/



}