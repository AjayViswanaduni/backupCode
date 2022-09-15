/*public class EmailThroughApex {
    Public Void sendEmail(){
     Messaging.SingleEmailMessage myMail = new Messaging.SingleEmailMessage();
        String[] toAddress = new String[]{'ajayviswanaduni4248@gmail.com'};
        String[] bccAddress = new String[]{'ajayviswanadunijay@gmail.com'}; 
        myMail.setCcAddresses(toAddress);
        mymail.setBccAddresses(bccAddress);
        Messaging.sendEmail(new Messaging.SingleEmailMessage[]{myMail});
    }
}*/
public class MessagingUtility 
{
	Public static void MsgBatchDetails(AsyncApexJob Jobdetails)
    {
        if(Jobdetails != Null)
        {
            Messaging.SingleEmailMessage Email = New messaging.SingleEmailMessage();
            
            String[] ToAddress = New String[] {Jobdetails.createdby.email, 'asnreddy2220@gmail.com', 'appyvenkat2010@gmail.com'};
            Email.setToAddresses(ToAddress);
            email.setreplyto('poduri94@gmail.com');
            Email.setSenderDisplayName('SSS Viswanath');
            Email.setSubject('BatchJob - UpdateAcctsRecsUsnBatchClass status Notification ID: '+Jobdetails.id);
                String EmailContent =  'Heyy Dear'+',';
                				   EmailContent+='Here is the Job status Notification for Batch: UpdateAcctsRecsUsnBatchClass '+Jobdetails.id;
            					   EmailContent+= '<br/><br/> Below are the Batch details: <br/><br/>';
                                   EmailContent+='Batch Job ID is: ' + Jobdetails.id;
            					   EmailContent+='<br/> Batchjob Name is: UpdateAcctsRecsUsnBatchClass ';
                                   EmailContent+='<br/> Batchjob Status is: '+ Jobdetails.status;
                                   EmailContent+='<br/> Total Number of Jobs are: '+ Jobdetails.totaljobitems;
                                   EmailContent+='<br/> Total number of Batches Processed are: '+ Jobdetails.jobitemsprocessed;
                                   EmailContent+='<br/> Number of Batches Failed '+ Jobdetails.NumberOfErrors;
                                   EmailContent+='<br/><br/> **** This is My Mail, Please dO nOt RePlY. I hAtE rEvErTiNg **** <br/><br/>';
                                   EmailContent+='Thanks & Regards, <br/>P Gopi Viswanath, <br/>SSS Tirupathi ';
            Email.setHTMLBody(EmailContent);
            Messaging.sendemail(new messaging.SingleEmailMessage[] {Email});
                
        }
    }
}