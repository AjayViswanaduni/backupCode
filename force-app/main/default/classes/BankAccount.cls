//Creating a class named BankAccount
Public class BankAccount{
    //DM
    //Abstraction dataype name
    public Integer ac_no;
    public String ach_name;
    public Decimal ac_bal; 
    //MM
    //create
    //create the constructor and load dummy values to it
    public BankAccount(){//default constructor with dummy values
        ac_no = 0;
        ach_name = 'no name';
        ac_bal = 0;
    }//end of constructor
    //Input==> Accept 3 values and load them into DM
    //abstraction rt type mtd name(dt n, dt n,....){
    //}
    public void setValues(Integer no,String name,Decimal bal){
    //body==>well defined task
    ac_no = no;
    ach_name = name;
    ac_bal = bal;
    }//end of input
    //process
    public void hike(Integer amt){//as amt is declared as data member we supplied it here
        ac_bal *= amt;//after execution the value is stored into data member ,so we dont have to return any
        System.debug('Amount deposited');
    }
    public void withdraw(Integer amt){
        if(amt <= ac_bal){
            try{
                ac_bal =ac_bal- amt;
        System.debug('Amount withdrawn is:'+amt);
                System.debug('Account balance is :'+ac_bal);
            }
        
        catch(Exception e){
                System.debug('Amount cannot be withdrawn,Entered amount to withdraw is greater than existing balance');
            }
        }
    }
    
    public void checkbalance(){
        System.debug('Account balance is :'+ac_bal);
    }
    //Output display values of dm
    public void getValues(){
        System.debug('Account Number is :' + ac_no);
        System.debug('Account Holder name is :' + ach_name);
        System.debug('Account Balance is :' + ac_bal);
        }    
}//End of class