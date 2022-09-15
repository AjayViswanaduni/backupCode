trigger dealTrig on Deal__c (after update,after delete,after Undelete) {
// create set of opportunity ids
  Set<id> OppIds = new Set<id>();
  //create a list of opportunities where we use this list to update the opportunites
  List<Opportunity> OppUpdateList = new List<Opportunity>();
  
  if(trigger.isInsert || trigger.isUndelete || trigger.isUpdate){
   for(Deal__C d : trigger.new){
      OppIds.add(d.Opportunity__c);
      System.debug('Ids are ' +OppIds);
   }
  }
  List<Opportunity> OppList = [select id,name,(select id,opportunity__c from Deals__r)
                              from Opportunity WHERE ID IN : OppIds];
  for(Opportunity op : OppList){
    op.Deal_Created__c = true;
    OppList.add(op);
  }
  update opplist;
  system.debug('Data is ' +oppList);
}