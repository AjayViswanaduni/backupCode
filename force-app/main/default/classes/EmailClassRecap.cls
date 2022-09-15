public class EmailClassRecap {
    Public static void sendEmail(){
        Messaging.SingleEmailMessage emails = new Messaging.SingleEmailMessage();
        String[] toAdd = new string[]{'ajayviswanaduni4248@gmail.com','ajayviswanadunijay@gmail.com'};
            String[] bccAdd = new string[]{'ajayviswanadhuni@gmail.com'};
                emails.setToAddresses(toAdd);
        		emails.setBccAddresses(bccAdd);
    }
}