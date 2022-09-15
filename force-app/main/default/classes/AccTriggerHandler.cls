public class AccTriggerHandler {
	//Before Insert
    Public static void beforeInsertLoigc(List<Account> triggerNewList){
        for(Account accRec: triggerNewList){
            //Scenario-1: Pre populate Shipping Address if it's null
            if(accRec.ShippingCity == null)
                accRec.ShippingCity = accRec.BillingCity;
            if(accRec.ShippingCountry == null)
                accRec.ShippingCountry = accRec.BillingCountry;
            if(accRec.ShippingState == null)
                accRec.ShippingState = accRec.BillingState;
            if(accRec.ShippingStreet == null)
                accRec.ShippingStreet = accRec.BillingStreet;
            
            //Secnario-2: Throw an error if AnnualRevenue is less than 1000
            if(accRec.AnnualRevenue < 1000)
                accRec.AnnualRevenue.addError('Cannot save the Account as the Annual Revenue is less than 1000');
        }
    }
    //After Insert
    public static void afterInsertLogic(List<Account> newAccList){
	 //Scenario-3:Create an associate contact when an account is created
        List<Contact> conListToInsert = new List<Contact>();
        for(Account acc: newAccList){
            Contact con = new Contact();
            con.LastName = acc.Name;
            con.AccountId = acc.Id;
            conListToInsert.add(con);
        }
        if(ConListToInsert.size()>0)
            insert conListToInsert;        
    }

    //Before Update
    public static void beforeUpdateLogic(List<Account> newList,Map<Id,Account> oldMap){
         //Scenario-4:Throw an error if user tries to update the account name
        for(Account accNew: newList){
            Account accOld = oldMap.get(accNew.Id);
            if(accNew.Name != accOld.Name){
                accNew.Name.addError('Cannot Modify Account Name once it is Created');
            }
            /*for(Account accNew:trigger.new){
                if((accOld.Id == accNew.Id) && (accOld.Name !=accNew.Name))
                    accNew.addError('Cannot Change Account Name');
            }*/
      }
    }
    //After Update
    public static void afterUpdateLogic(List<Account> newList,Map<Id,Account> oldMap){
        //Scenario-5:If the user updates the Account's Billing address, it's related contact record's Mailing Address
        //should be updated with the same
        //Set of ids to store the accounts whose billing address got updated
        Set<Id> accIdsWhichBillingStreetGotUpdated = new Set<Id>();
        for(Account accNewRec : newList){
            Account accOldRec = oldMap.get(accNewRec.Id);
            if(accNewRec.BillingStreet != accOldRec.BillingStreet){
                accIdsWhichBillingStreetGotUpdated.add(accNewRec.Id);
            }
        }
        List<Account> accWithContacts =[SELECT Id,Name,BillingState,BillingCity,BillingCountry,BillingStreet,(SELECT Id,Name FROM Contacts) from Account WHERE Id in: accIdsWhichBillingStreetGotUpdated];
 		List<Contact> conListToUpdate = new List<Contact>();
        
        for(Account acc: accWithContacts){
            List<Contact> consFromLoopedAccounts = acc.Contacts;
            for(Contact con : consFromLoopedAccounts){
                con.MailingCity = acc.BillingCity;
                con.MailingState = acc.BillingState;
                con.MailingCountry = acc.BillingCountry;
                con.MailingStreet = acc.BillingStreet;
                conListToUpdate.add(con);
            }
        }
        if(conListToUpdate.size()>0)
            update conListToUpdate;
    }
    //before delete
    public static void beforeDeleteLogic(List<Account> oldList){
        //Scenario-6:Throw an error if user tries to delete an account which is active
        for(Account accOld : oldList){
            if(accOld.Active__c == 'Yes')
                accOld.addError('Cannot delete an active Account');
        }
    }
    //After delete
    public static void afterDeleteLogic(List<Account> oldList){
        //Scenario-7: Send Email to the User who deletes the account
        List<Messaging.SingleEmailMessage> emailObjs = new List<Messaging.SingleEmailMessage>();
        for(Account accRecords: oldList){
            Messaging.SingleEmailMessage emailObj = new Messaging.SingleEmailMessage();
            List<String> emailAddresses = new List<String>(); 
            emailAddresses.add(userinfo.getUserEmail());
            emailObj.setToAddresses(emailAddresses);
            emailObj.setSubject('Account had been Successfully deleted'+accRecords.Name);
            emailObj.setPlainTextBody('Refer Subject');
            emailObjs.add(emailObj);
        }
        Messaging.sendEmail(emailObjs);
    }
    //Afer Undelete Logic
    public static void afterUndeleteLogic(List<Account> newList){
        List<Messaging.SingleEmailMessage> emailObjs = new List<Messaging.SingleEmailMessage>();
        for(Account accNewRecords: newList){
            Messaging.SingleEmailMessage emailObj = new Messaging.SingleEmailMessage();
            List<String> emailAddresses = new List<String>(); 
            emailAddresses.add(userinfo.getUserEmail());
            emailObj.setToAddresses(emailAddresses);
            emailObj.setSubject('Account had been Successfully restored!!'+accNewRecords.Name);
            emailObj.setPlainTextBody('Refer Subject');
            emailObjs.add(emailObj);
        }
        Messaging.sendEmail(emailObjs); 
    }
}