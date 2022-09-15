public class recentRecordsController {
@auraEnabled
    public static List<Sobject> getRecords(string objName){
        string strQuery = 'SELECT ID,Name FROM '+objName+' ORDER BY CreatedDate DESC LIMIT 10'; 
        //SELECT ID,Name from Sobject ORDER BY CreatedDate DESC LIMIT 10
        return database.query(strQuery);
    }
}