public class DMLSoqlClass {
    
    public static void createAccount(integer e)
    {
        list<Account> Acc = new list<Account>();
        for (integer i=1;i<=e;i++)
        {
            Account a = new Account();
            a.Name = 'Test Account '+system.now(); 
            a.AccountNumber = '123456';
            Acc.add(a);
        }
        insert Acc;
        System.debug(Acc);           
    }   
    public static void fetchAccount(integer e){
        List<Account> ListAcc = [select id,Name,Phone From Account order by CreatedDate desc limit:e];
        for(Account ac:ListAcc){
            system.debug('Account Name:'+ac.Name);
            system.debug('Account Name:'+ac.Phone+'\n');
            
        }
        
    }
}