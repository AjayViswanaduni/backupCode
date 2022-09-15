@istest
public class MC_test {
    public static testMethod void main(){
       Course__c crs1 = new Course__c();
        crs1.Name = 'MCOM';
        crs1.Duration__c = 4;
        crs1.Fee__c = 100000;
      // insert crs1;
        Course__c crs2 = new Course__c();
        crs2.Name = 'LKG';
        crs2.Duration__c = 4;
        crs2.Fee__c = 100000;
      // insert crs2;
        Course__c crs3= new Course__c();
        crs3.Name = 'UKG';
        crs3.Duration__c = 4;
        crs3.Fee__c = 100000;
      // insert crs3;
        Course__c crs4= new Course__c();
        crs4.Name = 'Masters';
        crs4.Duration__c = 4;
        crs4.Fee__c = 100000;
       //insert crs4;
        Course__c crs5= new Course__c();
        crs5.Name = 'MSC';
        crs5.Duration__c = 4;
        crs5.Fee__c = 200000;
      // insert crs5;
      // we are adding the courses into a collection and then we execute it inorder to work against governor limits
        List <Course__c> crs = new List<Course__C>();
        crs.add(crs1);
        crs.add(crs2);
        crs.add(crs3);
        crs.add(crs4);
        insert crs;
        //now we put the SOQL query in APEX code to check whether its working or not
      List<Course__C> crss = [select id,name,Duration__c,Fee__c,Mode_Of_Training__c from Course__c];
     system.debug('courses are :'+ crss);
        //now we r using for each condition to print each value one after another
        //syntax for each() Value of value name :in Collection name
        List<Course__c> new_course_data = new List<Course__c>();
        for(Course__c course_name : crss){
            //print each value name
            System.debug('Courses are :' + course_name);
            course_name.Fee__c += 0.15*course_name.Fee__c;
            new_course_data.add(course_name);
        }
        //update courses
        update new_course_data;
        for(Course__c course_name : crss){
            //print each value name
            System.debug('Courses are :' + course_name.Name + 'Fee :' + course_name.Fee__c + 'Duration :' + course_name.Duration__c + 'Mode of Training :' + course_name.Mode_Of_Training__c);
      
      }
    }    
}