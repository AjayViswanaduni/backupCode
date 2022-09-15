public class AEvent2Class {
@auraEnabled
    public static string createAccount(Account obj){
        try{
            insert obj;
            return obj.Id;
        }catch(exception e){
            return 'Error';
        }
    }
}