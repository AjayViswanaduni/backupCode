public class Aura_Iteration_L12 {
    @auraEnabled
    public static List<Account> getAccount(){
        return[SELECT ID,Name,Phone,Industry FROM Account LIMIT 20];
    }
}