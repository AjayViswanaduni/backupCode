trigger assignAccountManager on Account (before insert,before update) {
    if(trigger.isBefore && trigger.isInsert || trigger.isUpdate){
         for(Account acc  :  trigger.new){ // accounts that are created
            if(acc.BillingCountry !=null){
                if(acc.BillingCountry =='US'){
                    acc.Account_Manager__c='Peter';                   
                }
                else if(acc.BillingCountry =='UK'){
                    acc.Account_Manager__c='John';
                }
                else if(acc.BillingCountry =='India'){
                    acc.Account_Manager__c='Ram';
                }
                else if(acc.BillingCountry =='Austria'){
                    acc.Account_Manager__c='Sita';
                }else{
                    acc.Account_Manager__c='Mr.X';
                }
                acc.Account_Manager_Last_Modified_Date__c = system.today();
            }
        }
    }
  }