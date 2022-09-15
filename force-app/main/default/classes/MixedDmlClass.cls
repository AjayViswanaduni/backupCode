public class MixedDmlClass {
    public static void createAccount(string	abc){
        //First Dml Operation
        Account a = new Account(Name=abc);
        insert a;
    }
    //Second Dml Operation
    //Inserting an user with role
    public static void insertUserWithRole(string uname,string al,string em,string lname){
        profile p = [Select Id from Profile where Name='Standard User'];
        UserRole r = [Select Id from UserRole WHERE Name='COO'];
        //create an user
        user u = new User(alias=al,email=em,emailencodingkey='UTF-8',
                          lastName=lname,languagelocalekey='en_US',localesidkey='en_US',
                          profileId=p.id,userroleid=r.id,timezonesidkey='America/Los_Angeles',
                         username=uname);
        insert u;
    }
}