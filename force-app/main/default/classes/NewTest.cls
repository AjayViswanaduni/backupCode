@isTEst
public class NewTest {
public static @istest void main(){
    List<string>stud_names=new List<String>();
    stud_names.add('Ajay');
    stud_names.add('Srinivas');
    stud_names.add('Harishnath');
    stud_names.add('Thea');
    stud_names.add('Anjali');
    stud_names.add('Pavan');
    stud_names.add('Sravan');
    stud_names.add('Priya');
    stud_names.add('Murali');
    System.debug('Student names'+stud_names);
     Map<String,String>stud_alias=new Map<String,String>();
    stud_alias.put('Ajay','AJ');
    stud_alias.put('Srinivas','SRINI');
    stud_alias.put('Harishnath','HN');
    stud_alias.put('Thea','TH');
    stud_alias.put('Anjali','ANJ');
    stud_alias.put('Pavan','PVN');
    stud_alias.put('Sravan','SRA');
    stud_alias.put('Priya','PR');
    stud_alias.put('Murali','MUR');
    System.debug('Students and their marks are'+stud_alias);
    stud_alias.remove('Harishnath');
    System.debug('Students and their marks are'+stud_alias);
}
}