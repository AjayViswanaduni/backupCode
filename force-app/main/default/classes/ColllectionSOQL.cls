public class ColllectionSOQL {
    public void mtd(){
       
        Set<string> ratings = new Set<String>();
                ratings.add('Cold');
                ratings.add('Warm');
          List<Account> accListss = [Select id,name,Rating,Industry from Account where Rating != :ratings and Industry = 'Energy'];
        
         List<Account> accList = [Select id,name,rating,Industry from Account where rating='hot'];
        for(Account acc: accList){
           system.debug('Accounts are ' +acc.Name); 
            system.debug('Accounts are ' +acc.rating); 
            system.debug('Accounts are ' +acc.Id); 
            system.debug('Accounts are ' +acc.Industry +'\n'); 
        }
       List<Account> accLists = [Select id,name,rating,Industry from Account where rating !='hot'];
        for(Account acc: accLists){
           system.debug('Accounts are ' +acc.Name); 
            system.debug('Accounts are ' +acc.rating); 
            system.debug('Accounts are ' +acc.Id); 
            system.debug('Accounts are ' +acc.Industry +'\n'); 
        }
       
      List<Account> ac = [Select id,name,rating,Industry from Account where rating IN('hot','Warm')];
        for(Account acc: ac){
           system.debug('Accounts are ' +acc.Name); 
            system.debug('Accounts are ' +acc.rating); 
            system.debug('Accounts are ' +acc.Id); 
            system.debug('Accounts are ' +acc.Industry +'\n'); 
        }
          List<Account> acc = [Select id,name,rating,Industry from Account where rating NOT IN('hot','Warm')];
        for(Account acct: acc){
           system.debug('Accounts are ' +acct.Name); 
            system.debug('Accounts are ' +acct.rating); 
            system.debug('Accounts are ' +acct.Id); 
            system.debug('Accounts are ' +acct.Industry +'\n'); 
        }
       
  //Querying Child data from Parent using ChildRelationShipName(Plural Label)
          List<Account> acList = [select id,name,(select name, id, email from contacts) from account];
          for(Account accs:acList){
          system.debug(accs);
        }
        
		List<Account> accountList = [select id,name,AnnualRevenue,Industry,(select id,name,Stage__c,phone from Contacts),
                            (select id,name,CloseDate,StageName from Opportunities)from Account];
        for(Account acount:accountList){
        System.debug('No. of Accounts are ' +accountList.size());
        System.debug('No. of Accounts are ' +acount.Name);
        }
        //If it's custom Object
        //List<Parent__c> pList = [Select ID,Name,(select Id,Name from childRelationName__r)from Parent__c];
       
        
        //Querying Parent Data from Child Object
          List<Contact> c = [Select FirstName, LastName, Account.Name, Account.Industry from contact where email = 'ajayv@gmail.com'];
          for(Contact Con:c){
          system.debug(Con);
           }
        
          //for custom objects
          //List<Child__c> cList = [Select ID,Name,Relation__r.ParentField1__c,Relation__r.ParentField2__c from Child__c];
    }     
}