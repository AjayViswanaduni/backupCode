public class OppExtCtrl {
   public List<Opportunity> oppList{set;get;}
    public OppExtCtrl(ApexPages.StandardSetController controller) {
       oppList = [select id,name,Probability,StageName,Type from Opportunity];
    }

}