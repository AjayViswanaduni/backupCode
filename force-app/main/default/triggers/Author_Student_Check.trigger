trigger Author_Student_Check on Book__c (before insert,before update) {
 //make sure student is not author
 List<Student__c> students = [select id,Name,Student_Name__c from Student__c];
 List<Book__c> books = Trigger.new;
 for(Student__c studs :students){
 for(Book__c book :books){
 if(book.Author_Name__c==studs.Student_Name__c){
 book.Author_Name__c.addError('Student name cannot be taken as Author');
 }//if
 }//book
 }//stud

}