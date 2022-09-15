trigger UpdateCheckboxTrig on Dummy_Deal__c (after insert) {
   for(Dummy_Deal__c deals:trigger.new){
     Opportunity opp = [select id,name,Deal_Created__c from Opportunity where id =: deals.Opportunity_Lookup__c ];
     opp.Deal_created__c = true;
     update Opp;
   }
 
}