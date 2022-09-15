public class LightningInVF2_L25 {
@auraEnabled
    Public static List<Account> getAccounts(string skey){
        return [SELECT Id,Name,Phone,Industry from Account where Industry =: skey];
    }
}