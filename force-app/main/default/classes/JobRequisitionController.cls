public class JobRequisitionController {
@AuraEnabled
     public static void sendEmailWithTemplate(String recID){
        List<Messaging.SingleEmailMessage> mailsList = new List<Messaging.SingleEmailMessage>();
        EmailTemplate temp =[SELECT ID,Subject,Body FROM EmailTemplate WHERE DeveloperName = 'Email_Report'];
         List<Contact> conList = new list<Contact>();
         for(Job_Requisition__c jobs : ([SELECT Id,Client_Contact__r.Id,Client_Contact__r.email FROM Job_Requisition__c Where Id =: recID])){
          conList.add(jobs.Client_Contact__r);
           for(Contact c:conList){
                Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
                 mail.setTemplateId(temp.id);
                 mail.setTargetObjectId(c.id); 
                 mailsList.add(mail);
            }
        }
            if(!mailsList.isEmpty()){
            Messaging.sendEmail(mailsList);
         }
     }
}