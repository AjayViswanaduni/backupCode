@RestResource(urlMapping='/RestEx')
global class RestEx1{
@HttpPost
global static void insertCrs(String name,Integer fee){
Course__c course = new Course__c();
course.Name= name; 
course.Fee__c = fee;
insert course;
}
    @HttpGet
    global static List<Course__c> fetchCourses(){
        List<Course__c> crs = [select Id,name,Duration__c,Fee__c,Mode_Of_Training__c from Course__c];
        return crs;
    }
  @HttpPatch
    global static void updateCrs(){
    List<Course__c> crs = [select Id,name,Duration__c,Fee__c,Mode_Of_Training__c from Course__c];
    for(Course__c crss : crs){
        crss.Fee__c += 1000;
    }
        update crs;
    }
  @HttpPut
        global static void upsertCrs(){
            List<Course__c> crs = [select Id,name,Duration__c,Fee__c,Mode_Of_Training__c from Course__c];
    for(Course__c crss : crs){
        crss.Fee__c -= 1000;
            }
            Upsert crs;
}
    
}