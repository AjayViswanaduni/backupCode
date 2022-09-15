public class Book_Ln_Class {
    @Auraenabled
    public static void createBook(string bn,string ba,Integer bp,Integer be ){
        Book__c b1 = new Book__c();
        b1.Book_Name__c = bn;
        b1.Author_Name__c = ba;
        b1.Price__c = bp;
        b1.Edition__c = be;
        try{
       insert b1;        
    }
        catch(Exception e){
            
        }
    }

}