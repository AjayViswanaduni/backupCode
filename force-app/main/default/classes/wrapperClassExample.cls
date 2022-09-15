public class wrapperClassExample {
       @AuraEnabled public static wrapEx getAccount(String strIndustry){
            wrapEx obj = new wrapEx();
            try{
              Account acc = new Account();
                acc = [select ID,Name,Phone,Industry from Account where Industry =: strIndustry Limit 1];
                obj.accName = acc.Name;
                obj.accPhone = acc.Phone;
                obj.accIndustry = acc.Industry;
                obj.status = 'SUCCESS';
            }
            catch(Exception e){
                obj.status = 'Error:'+e.getMessage();
            }
           return obj;
        }
        public class wrapEx{
           @AuraEnabled public string accName;
           @AuraEnabled public string accPhone;
           @AuraEnabled public string accIndustry;
           @AuraEnabled public string status;
        }
    }