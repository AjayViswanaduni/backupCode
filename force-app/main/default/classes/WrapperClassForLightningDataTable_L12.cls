public class WrapperClassForLightningDataTable_L12 {
    @auraEnabled
    public static List<accountRegistration> getAccount(){
        List<accountRegistration> lstw = new List<accountRegistration>();
        for(Account acc: [SELECT ID,Name,Phone,Industry FROM Account LIMIT 20]){
            accountRegistration obj = new accountRegistration();
            obj.accName = acc.Name;
            obj.accPhone = acc.Phone;
            obj.accIndustry = acc.Industry;
            lstw.add(obj);
        }
        return lstw;
    }
    public class accountRegistration{
        @auraEnabled public string accName;
        @auraEnabled public string accPhone;
        @auraEnabled public string accIndustry;
       
    }
}