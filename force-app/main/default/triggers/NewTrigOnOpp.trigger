trigger NewTrigOnOpp on Deal__c (after insert,after update,after delete,After Undelete) {
    Set<Id> OppIDSet = new set<Id>();
    list<Opportunity> OppUpdateList = new list<Opportunity>();
}