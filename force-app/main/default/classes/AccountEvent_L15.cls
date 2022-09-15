public class AccountEvent_L15 {
@auraEnabled
    Public static string insertAccount(Account obj){
        try{
            insert obj;
            return obj.Id;
        }
        catch(exception e){
            return 'Error :'+e.getMessage();
        }
    }
    @auraEnabled
    Public static List<Account> getAccounts(){
        return[SELECT ID,Name,Phone,Industry FROM Account order by createdDate desc limit 20];
    }
}