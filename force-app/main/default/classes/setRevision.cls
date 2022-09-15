public class setRevision {
    Public static set<Course__c> removeCourse(){
        List<course__c> crs = [select Name from course__c limit 5];
        Set<Course__c> crss = new Set<Course__c>();
        crss.addAll(crs);
        for(course__c course : crss){
            System.debug(course.Name);
        }
     /* try{
            crss.remove('PDMS');
        }
        catch(Exception e){
            
        }*/
        return crss;
        
    }
    }