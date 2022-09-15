public class NewCustomControllerClass {
    Account acc;
public string accName{set;get;}
public String accPhone{set;get;}
public string accRating{set;get;}
  Public PageReference saveAccount(){
   acc = new Account();
   acc.Name = accName;
   acc.Rating = accRating;
   acc.phone = accPhone;
      insert acc;
      
      PageReference pg = new PageReference('/'+acc.Id);
      return pg;
  }
}