@istest
//creting a test class for collections
public class CollectionTest {
    public static testMethod void main(){
        //working with list
        //create an object using List class
    List<string> stud_names = new List<string>();
        //insert
        stud_names.add('Ajay');
        stud_names.add('Anjali');
        stud_names.add('Pavan');
        stud_names.add('Priya');
        stud_names.add('Srini');
        //Display the list
        System.debug('The Students are :' +stud_names);
        //remove using index of values in list
        stud_names.remove(3);
         System.debug('The Students after removing are :' +stud_names);
        //if there are many values and if u dont know the index of that value,
        //we can do it by finding the index and then we remove that particular index
        Integer Index = stud_names.indexOf('Pavan');
        stud_names.remove(Index);
        //System.debug(Index);
        System.debug('The Students after removing are :' +stud_names);
        
        //working with Set
        ////creating object
        Set<string> Country_names = new Set<string>();
        //insert
        Country_names.add('India');
        Country_names.add('US');
        Country_names.add('Russia');
        Country_names.add('SaudiArabia');
        Country_names.add('France');
        //display the set
       System.debug('The Country_names are :' +Country_names);
        //remove using value as every value is unique
        Country_names.remove('France');
        System.debug('The Country_names after removing are :' +Country_names);
       //working with map
       //creating object
      Map<string,string> Country_Capitals = new Map<string,string>();
        //Insert
       //we use keyword put to insert
        Country_Capitals.put('India','New Delhi');
        Country_Capitals.put('US','Washington DC');
        Country_Capitals.put('Russia','Moscow');
        Country_Capitals.put('Saudi','Riyadh');
        Country_Capitals.put('France','Paris');
        //display
       System.debug('The Country_Capitals are :' +Country_Capitals);
        //removee
       Country_Capitals.remove('France');        
        System.debug('The Country_Capitals after removing are :' +Country_Capitals);
    
   
        
        
        
    }   
}