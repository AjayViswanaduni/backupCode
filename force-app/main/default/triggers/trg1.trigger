trigger trg1 on Course__c (before insert,before update,before delete,after insert,after update,after delete,after undelete){
  System.debug('Trigger is executed');
  System.debug('The number of records operated are :' +Trigger.size);
  System.debug('Is it executed before :' + Trigger.isBefore);
  System.debug('Is it executed after:' + Trigger.isAfter);
  System.debug('It is executed for Insert DML :' +Trigger.isInsert);
  System.debug('It is executed for Update DML :' +Trigger.isUpdate);
  System.debug('It is executed for Delete DML :' +Trigger.isDelete);
  System.debug('It is executed for Undelete DML :' +Trigger.isUndelete);
  System.debug('Data in Old Version :' +Trigger.old);
  System.debug('Data in New Version :' +Trigger.new);
  System.debug('Data in OldMap Version :' +Trigger.oldMap);
  System.debug('Data in NewMao Version :' +Trigger.newMap);
  }