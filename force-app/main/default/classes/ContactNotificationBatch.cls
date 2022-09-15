Public class ContactNotificationBatch implements Database.Batchable<sObject>{
    public Database.QueryLocator start(Database.BatchableContext bc){
        Date todayDate = System.today();
        Integer BirthMonth = system.today().month();
        Integer BirthDay = todayDate.day();
        String q = 'SELECT Id,Email,LastName FROM Contact WHERE Email!=null AND Birthdate =today';
        //String q='select id,lastName,Birth_Date_Custom__c from contact where email !=null and CALENDAR_MONTH (Birth_Date_Custom__c) =:BirthMonth AND DAY_IN_MONTH(Birth_Date_Custom__c)=:BirthDay';
        return Database.getQueryLocator(q);
    }
    
    public void execute(Database.BatchableContext b,list<Contact> scope){
        list<String> listCon = new list<String>();
        list<Messaging.SingleEmailMessage> messages = new List<Messaging.SingleEmailMessage>();

        for(Contact con : scope){
            Messaging.SingleEmailMessage email = new Messaging.SingleEmailMessage();
            email.setSubject('Birthday Wishes!!');
            email.setPlainTextBody('Hi '+con.LastName+' , We wish you a Happy Birthday!');		
            email.setToaddresses(new list<String>{con.Id});
            messages.add(email);
        }
                
        //Email service class

        Messaging.SendEmailResult[] results = Messaging.sendEmail(messages);
        
        if (results[0].success) {
            System.debug('The email was sent successfully.');
        } else {
            System.debug('The email failed to send: '
                         + results[0].errors[0].message);
        }

    }
    
    public  void finish(Database.BatchableContext bc){
        
    }
}