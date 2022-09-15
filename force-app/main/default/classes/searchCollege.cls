public class searchCollege {
@auraEnabled
    Public static List<Account> getAccounts(string strIndustry){
        return[SELECT ID,Name,Phone,Industry from Account where Industry =:strIndustry];
    }
}