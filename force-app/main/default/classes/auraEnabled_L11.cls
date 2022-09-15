public class auraEnabled_L11 {
 @auraEnabled
    public static string insertAcc(Account acc){
        try{
            insert acc;
            return acc.id;
        }catch(exception e){
            return e.getMessage();
        }
    }
}