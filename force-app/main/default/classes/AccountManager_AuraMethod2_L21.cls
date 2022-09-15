public class AccountManager_AuraMethod2_L21 {

@auraEnabled
    Public static string insertAccount(Account obj){
        try{
            insert obj;
            return obj.Id;
        }catch(exception e){
            return 'Error';
        }
    }
    
@auraEnabled
    Public static List<Account> getAccounts(){
        return[SELECT ID,Name,Phone,Industry from Account order by createdDate desc limit 15];
    }

}