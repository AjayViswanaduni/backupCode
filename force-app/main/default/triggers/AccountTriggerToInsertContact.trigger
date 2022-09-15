trigger AccountTriggerToInsertContact on Account (after insert) {
    if(trigger.isAfter && trigger.isInsert){
        system.enqueueJob(new ContactCreationQueueable(trigger.new));
    }
}