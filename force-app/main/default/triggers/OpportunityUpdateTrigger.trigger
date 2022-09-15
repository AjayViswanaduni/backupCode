trigger OpportunityUpdateTrigger on Competitor__c (after insert) {
  List<Opportunity> oppList = new List<Opportunity>();
    for(Competitor__c comp : trigger.new){
        Opportunity opp = [Select id,name,Hr__C,Developer__c from Opportunity where id =: comp.opportunity_lookup__c];
        if(comp.competitor_type__c == 'HR'){
            if(opp.HR__c == null)
                opp.HR__c = comp.name;
            else
                opp.HR__c = opp.HR__c+ ';'+ comp.name;
            oppList.add(opp);
        }
          else if(comp.competitor_type__c == 'Developer'){
            if(opp.Developer__c == null)
                opp.Developer__c = comp.name;
            else
                opp.Developer__c = opp.Developer__c+ ';'+ comp.name;
            oppList.add(opp);
        }
      }
    if(oppList.size()>0 && oppList != null){
        update oppList;
    }
}