@isTest
public class AccountMethodTest {
    public static testMethod void accTest(){
        //load test data
         Integer n;
      List<Account> acc = new List<Account>();
        for(Integer i=1;i<=n;i++){
            Account ac = new Account();
            ac.Name = 'Dev Console Account' +system.now();
            acc.add(ac);
        }
        Insert acc;
        //test the data
    }
}