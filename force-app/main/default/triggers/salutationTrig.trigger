trigger salutationTrig on Customer (before insert) {
    for(Customer cust : trigger.new){
    if(cust.gender__c == 'Male')
      cust.name = 'Mr.'+cust.name;
      else if(cust.gender__c == 'Female')
      cust.name = 'Miss.'+cust.name;
      else
      cust.name = cust.name;
    }
}