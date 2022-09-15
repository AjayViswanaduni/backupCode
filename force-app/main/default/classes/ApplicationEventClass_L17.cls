public class ApplicationEventClass_L17 {
@auraEnabled
    Public static string insertAccount(Account obj){
        try{
            insert obj;
            return 'OK';
        }catch(exception e){
            return 'Error';
        }
    }
    
@auraEnabled
    Public static List<Account> getAccounts(){
        return[SELECT ID,Name,Phone,Industry from Account order by createdDate desc];
    }
}