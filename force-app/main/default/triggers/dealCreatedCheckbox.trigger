trigger dealCreatedCheckbox on Deal__c (after insert) {
   for(Deal__c d : trigger.new){
   //if(!d.opportunity__c = null){
   opportunity opp = [Select id,Deal_Created__c from Opportunity where ID =: d.Opportunity__c];
   opp.Deal_created__c = True; 
  update opp;
}
}