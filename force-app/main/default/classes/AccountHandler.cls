public class AccountHandler 
{  
     public static void createAccount(integer e)
    {
        list<Account> Acc = new list<Account>();
        for (integer i=1;i<=e;i++)
        {
            Account a = new Account();
            a.Name = 'Test Account '+system.now(); 
            a.AccountNumber = '123456';
          	Acc.add(a);
            //System.debug(system.now());
        }
        insert Acc;
        System.debug(Acc);           
    }   
      public static void deleteRecentAccount(integer e){
        List<Account> ListAcc = [select id From Account order by CreatedDate desc limit:e];
          Delete ListAcc;
    }

    }