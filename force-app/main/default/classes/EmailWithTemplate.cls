public class EmailWithTemplate {
    @AuraEnabled
     public static void sendEmailWithTemplate(String recID){
        List<Messaging.SingleEmailMessage> mailsList = new List<Messaging.SingleEmailMessage>();
        EmailTemplate temp =[SELECT ID,Subject,Body FROM EmailTemplate WHERE DeveloperName = 'Email_Report'];
       // Contact con =[SELECT Id,Email from Contact where Id =: recID];
         //Account acc = [SELECT Id,Name,(select name,Id,Email from contacts)from Account Where Id =: recID];
         for(account accs : [select id, name, (select id, email from contacts) from account Where Id =: recID]){
        list<contact> con = accs.contacts;
            for(contact c:con){
                system.debug('Contact Id: '+c.id);
                Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
                mail.setTemplateId(temp.id);
                 mail.setTargetObjectId(c.id); 
                 mailsList.add(mail);
            }
        }
        if(!mailsList.isEmpty())
            Messaging.sendEmail(mailsList);
    }
}