public class AccountMethod {
    Public Void InsertAccounts(Integer n){
        List<Account> acc = new List<Account>();
        for(Integer i=1;i<=n;i++){
            Account ac = new Account();
            ac.Name = 'Dev Console Account' +system.now();
            acc.add(ac);
        }
        Insert acc;
        System.debug(acc.size());
    }
    Public void DeleteAccounts(Integer d){
        List<Account> deleteAccounts = [select id from Account order by CreatedDate desc limit:d];
        Delete deleteAccounts;
    }
}