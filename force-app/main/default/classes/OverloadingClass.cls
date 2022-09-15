public class OverloadingClass {
    Public Void add(Integer a, Integer b){
        System.debug('Integer,Integer');
        
    }
    Public Void add(Integer a, Integer b,Integer c){
  System.debug('Integer,Integer,Integer');        
    }
    Public Void add(Integer a, Decimal b){
  System.debug('Integer,Decimal');       
    }
}