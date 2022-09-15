public class WrapperClass_L11 {
    @auraEnabled
    public static accountRegistration getAccount(string strIndustry){
        accountRegistration obj = new accountRegistration();
        try{
            Account objA = new Account();
            objA = [SELECT ID,Name,Phone,Industry from Account WHERE Industry =: strIndustry Limit 1];
            obj.accName = objA.Name;
            obj.accPhone = objA.Phone;
            obj.accIndustry = objA.Industry;
            obj.status = 'SUCCESS';
        }
        catch(exception e){
            obj.status = 'Error :'+e.getMessage();
        }
        return obj;
    }
    //wrapper class=>
    public class accountRegistration{
        @auraEnabled public string accName;
        @auraEnabled public string accPhone;
        @auraEnabled public string accIndustry;
        @auraEnabled public string status;
    }
}