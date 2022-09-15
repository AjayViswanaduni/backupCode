public class JSONExample1 {
    //for serialize
    public string intResult{set;get;}
    public string decResult{set;get;}
    public string accResult{set;get;}
    
    
    //serialize example
    Public JSONExample1(){
        intResult = System.JSON.serialize(10);
        decResult = System.JSON.serialize(10.552);
        Account acc = new Account(Name='Ajay',Phone='9885634248',Rating='Hot', AnnualRevenue =10000000);
            accResult = System.JSON.serialize(acc);
    }
  }