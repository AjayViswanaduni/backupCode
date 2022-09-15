@restResource(urlMapping='/restExample/*')
global class RestExample {
    @HttpPost
    global static String insertAccount(String Name,String Phone,String Industry){
        Account acc = new Account();
        acc.Name = Name;
        acc.Phone = Phone;
        acc.Industry = Industry;
        Insert acc;
        return acc.id;
    }
    @HttpGet
    global static List<Account> getAccounts(){
        List<Account> accList = [Select Id,Name,Phone,Industry,Rating from Account];
        return accList;
    }
    @HttpPut
    global static void upsertAccounts(){
        List<Account> accountList = [Select Id,Name,Phone,Industry,Rating from Account where Industry='Energy'];
        for(Account ac : accountList){
            ac.Industry = 'Software';
        }
    }
    @HttpPatch
    global static void updateAccounts(){
        List<Account> accountsList = [Select Id,Name,Phone,Industry,Rating from Account where Industry='Software'];
        for(Account act : accountsList){
            act.Industry = 'Energy';
        }
    }
}