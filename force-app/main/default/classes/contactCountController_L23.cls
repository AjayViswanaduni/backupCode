public class contactCountController_L23 {
@auraEnabled
    Public static Integer getCount(string accId){
        List<Contact> lstC = [SELECT ID,AccountID FROM Contact WHERE AccountID =:accId];
        return lstc.size();
    }
}