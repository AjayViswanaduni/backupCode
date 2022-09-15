public class reportEmail {
    public static void sendEmailWithoutTemplate(){
        List<messaging.SingleEmailMessage> mailList = new List<messaging.SingleEmailMessage>();
        String[] toAddresses = new String[]{'ushaakepati1999@gmail.com'};
            
           Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
        mail.setSubject('Hi Friend,How are you?');
        mail.setPlainTextBody('I hope you received the mail');
        mail.setToAddresses(toAddresses);
        mailList.add(mail);
        if(!mailList.isEmpty())
            Messaging.sendEmail(mailList);
    
    }
}