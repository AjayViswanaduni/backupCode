trigger LeadTrg on Lead (before insert) {
    for(lead l : trigger.new ){
        if(l.LeadSource == 'Web'){
            l.Rating='cold';
        }
        l.Rating='hot';
    }
}