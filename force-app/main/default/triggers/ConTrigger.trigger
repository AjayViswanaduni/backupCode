trigger ConTrigger on Contact (after insert) {
    if(trigger.isAfter && trigger.isInsert && !ContactTriggerHandler.isTriggerRan){
        ContactTriggerHandler.isTriggerRan = true;
        ContactTriggerHandler.afterInsertLogic(Trigger.New);
    }
}