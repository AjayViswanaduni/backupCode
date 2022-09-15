trigger totalOpptyAmount on Opportunity (after insert,after update,after delete,after undelete) {
    if(trigger.isAfter){
        if(trigger.isInsert || trigger.isUpdate ||trigger.isDelete ||trigger.isUndelete ){
            totalOpptyAmountHandler.totalAmount(Trigger.new, Trigger.old);
        }
    }
}