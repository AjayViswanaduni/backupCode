public class JSONExample2Deserialize {
//for de serialize
    public Integer a{set;get;}
    public decimal d{set;get;}
    public BankAccount ba{set;get;}
    Public JSONExample2Deserialize(){
        //Deserialize Example
        a = (Integer)System.JSON.deserialize('10',Integer.class);
        d = (Decimal)System.JSON.deserialize('10.552',Decimal.class);
        String str = '{"ac_no":"5010406048860"}';
        ba = (BankAccount)System.JSON.deserialize(str,BankAccount.Class);
    }
}