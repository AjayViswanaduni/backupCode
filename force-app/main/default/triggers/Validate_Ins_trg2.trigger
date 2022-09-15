trigger Validate_Ins_trg2 on Course__c (before insert) {
//we r writing a trigger such that there shouldn't be any course less than 500
 List<Course__c> Courses = Trigger.new;
 System.debug('Courses are :' + Courses);
 for(Course__c crs: Courses){
 if(crs.Fee__c < 500){
   crs.Fee__c.addError('Low fee not allowed');
 }
}
}