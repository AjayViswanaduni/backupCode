trigger AccountAnnualRevenueValidation on Account (before insert) {
	
    if(trigger.isBefore && trigger.isInsert){
        
    }
}