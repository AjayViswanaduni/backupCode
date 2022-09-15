trigger discountTrig on Custom_Customer__c (before insert) {
for(Custom_Customer__c cust : trigger.new){
    if(cust.salary__c >= 10000){
        if(cust.country__c == 'India' && cust.state__c == 'AP')
            Cust.discount__c = cust.salary__c - (cust.salary__c * 0.5);
        
        else if(cust.country__c == 'India' && cust.state__c == 'GJ')
            Cust.discount__c = cust.salary__c - (cust.salary__c * 0.4);
        
        else if(cust.country__c == 'India' && cust.state__c == 'AS' || cust.state__c == 'BR' || cust.state__c == 'CG' || cust.state__c == 'HR')
            Cust.discount__c = cust.salary__c - (cust.salary__c * 0.3);
        
        else
            cust.discount__c = cust.salary__c - (cust.salary__c * 0.1);
    }
    else{
        cust.addError('Salary Cannot be less than 10,000');
    }
}
}