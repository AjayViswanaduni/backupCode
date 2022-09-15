public class lightningDataTableRev {
@AuraEnabled
    public static List<Account> getAccounts(string strIndustry){
        return [select Id,Name,Phone,Industry from Account where Industry =: strIndustry];
    }
}