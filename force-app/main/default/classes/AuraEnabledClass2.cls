public class AuraEnabledClass2 {
  @auraEnabled
    public static Account getAccount(string strIndustry){
        return [SELECT ID,Name,Phone,Industry FROM Account WHERE Industry =: strIndustry Limit 1];
    }
}