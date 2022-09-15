trigger deleteDeal on Dummy_Deal__c (after delete) {
    for(Dummy_Deal__c deals:trigger.old){
     Opportunity opp = [select id,name,Deal_Created__c from Opportunity where id =: deals.Opportunity_Lookup__c ];
     opp.Deal_created__c = false;
     update Opp;
   }
}