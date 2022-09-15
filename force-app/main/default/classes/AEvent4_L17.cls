public class AEvent4_L17 {
@auraEnabled
    Public static List<Account> getAccounts(string strIndustry){
        return[SELECT ID,Name,Phone,Industry FROM Account where Industry =: strIndustry];
    }
}