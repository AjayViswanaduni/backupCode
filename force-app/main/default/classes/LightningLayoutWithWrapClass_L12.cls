public class LightningLayoutWithWrapClass_L12 {
    @auraEnabled
    Public static List<WrapData> getData(){
        List<WrapData> lstw = new List<WrapData>();
        List<Account> accList =  [SELECT ID,Name,Phone,Industry FROM Account Limit 5];
        List<Contact> conList =  [SELECT ID,LastName,Email FROM Contact Limit 5];
        Integer count = 0;
        if(accList.size() < conList.size()){
            count = accList.size();
        }else{
            count = conList.size();
        }
        for(integer i=0;i<count;i++){
            WrapData obj = new WrapData();
            obj.accName = accList[i].Name;
            obj.accPhone = accList[i].Phone;
            obj.accIndustry = accList[i].Industry;
            obj.conLastName = conList[i].LastName;
            obj.conEmail = conList[i].Email;
            lstw.add(obj);
        }
        return lstw;
        
    }
    Public class WrapData{
        @auraEnabled Public string accName;
        @auraEnabled Public string accPhone;
        @auraEnabled Public string accIndustry;
        @auraEnabled Public string conLastName;
        @auraEnabled Public string ConEmail;
    }
}