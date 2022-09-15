public class BulkInsert {
    public void BulkAccounts(){
        List<Account> acc = new List<Account>();
        for(Integer i=1;i<=200;i++){
            Account ac = new Account();
            ac.Name='Aj'+i;
            ac.Phone='9885634248';
            ac.Rating='Cold';
            acc.add(ac);
        }
        Insert acc;
    }
}