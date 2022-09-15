public with sharing class CLC_Controller {
 Integer col_size = 0;
 Integer pagination = 5;
 Integer start = 0;
 Integer stop = pagination-1;
 public CLC_Controller(){
  col_size = [select count() from Course__c];
  }
  public PageReference last() {
    start = col_size - pagination -1;
    stop = col_size -1;
        return null;
    }


    public PageReference previous() {
    start -= pagination ;
    stop -= pagination -1; 
        return null;
    }


    public PageReference next() {
    start += pagination ;
    stop += pagination -1;
    
        return null;
    }


    public PageReference first() {
    start = 0;
    stop = pagination-1 ;
        return null;
    }


    public List<Course__c> my_courses ;
   public List<Course__c> getMy_courses (){
   List<Course__c> my_courses = new List<Course__c>();
    my_courses = [select id,name,Duration__c,Fee__c,Mode_Of_Training__c from Course__c limit : pagination];
    return my_courses;
}
}