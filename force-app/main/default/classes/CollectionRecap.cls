public class CollectionRecap {
    public Void AccList(){
    Account a1 = new Account(Name = 'THor');
    Account a2 = new Account(Name = 'IRon Man');
    Account a3 = new Account(Name = 'Captain America');
    Account a4 = new Account(Name = 'Cap Marvel');
    Account a5 = new Account(Name = 'Black Widow');
    List<Account> a = new List<Account>{a1,a2,a3,a4};
         System.debug('Total Accounts are '+a.size());
         System.debug('Accounts are '+a);
        a.add(a5);
        System.debug('Total Accounts are '+a.size());
         System.debug('Accounts are '+a);
       a.remove(4);
        System.debug('Total Accounts are '+a.size());
         System.debug('Accounts are '+a);
        a.clear();
        System.debug('Total Accounts are '+a.size());
         System.debug('Accounts are '+a);
}
    Public Void MapCol(){
       Map<String,Integer> m = new Map<String,Integer>();
        m.put('A',1);
        m.put('B',2);
        m.put('C',3);
        m.put('D',4);
        m.put('E',5);
System.debug('Map have these ' +m);
System.debug('Map have these ' +m.get('C'));
Set<String> keys = m.keySet();
System.debug('Keys are ' +keys);
    }
}