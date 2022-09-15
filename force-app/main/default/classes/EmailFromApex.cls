public class EmailFromApex {
    Public Void sendEmail(){
      Messaging.SingleEmailMessage myMail = new Messaging.SingleEmailMessage();
        String[] toAdd = new String[]{'ajayviswanaduni4248@gmail.com','ajayviswanadunijay@gmail.com'};
        String[] bccAdd = new String[]{'anjalisree17@gmail.com','anjali.gajam@gmail.com'};
         myMail.setToAddresses(toAdd);
         myMail.setBccAddresses(bccAdd);
         myMail.setSubject('Mail Using Apex Class');
         myMail.setHtmlBody('<h1>Hi bro,test 1166</h1>');
        Messaging.sendEmail(new Messaging.SingleEmailMessage[]{myMail});
    }
}