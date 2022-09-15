trigger AccountTriggerr on Account (before insert,after insert,before update,after Update,before delete,after delete,after undelete) {
    //Before Insert
    if(trigger.isBefore && trigger.isInsert){
    	    AccTriggerHandler.beforeInsertLoigc(trigger.new);
    }
    
    //After Insert
    if(trigger.isAfter && trigger.isInsert){
       AccTriggerHandler.afterInsertLogic(trigger.new);
    }
    //Before Update
    if(trigger.isBefore && trigger.isUpdate){
       AccTriggerHandler.beforeUpdateLogic(Trigger.New, Trigger.oldMap);
    }
    //After Update
    if(trigger.isAfter && trigger.isUpdate){
        AccTriggerHandler.afterUpdateLogic(Trigger.New,Trigger.oldMap);
    }
    //Before Delete
    if(trigger.isBefore && trigger.isDelete){
        AccTriggerHandler.beforeDeleteLogic(trigger.old);
    }
    //After Delete
    if(trigger.isAfter && trigger.isDelete){
        AccTriggerHandler.afterDeleteLogic(trigger.old);
    }
    //After Undelete
    if(trigger.isAfter && trigger.isUndelete){
		AccTriggerHandler.afterUndeleteLogic(trigger.new);
    }
}