public class LightningInVF1_L25 {
@auraEnabled
    Public static List<Account> getAccounts(){
        return [SELECT Id,Name,Phone,Industry from Account order by createdDate DESC Limit 20];
    }
}