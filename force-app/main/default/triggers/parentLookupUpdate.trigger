trigger parentLookupUpdate on Child__c (after insert) {
  for(Child__c c : trigger.new){
  if(c.status__c == 'Active'){
  Parent__c p = [select id,Active__c from Parent__c where id =: c.Parent_Lookup__c];
     p.active__c = true;
     update p;
  }
 }
}