@istest
    public class ExceptionClass {
    public static testMethod Void main(){
        Integer num = 25;
        Integer den = 0;
        Integer sum;
        Integer sub;
        Integer prod;
        Integer div;
        
        sum = num+den;
        System.debug('The sum is =' +sum);
        
        sub = num-den;
        System.debug('The sub is =' +sub);
        
        try{
        System.debug('Entered Try method');
            
        div = num/den;
        System.debug('The Division is =' +div);
        System.debug('End of try Method');
        }
        
        catch(Exception Method){
        System.debug('Cannot Divide by 0');
        }
        
        prod = num*den;
        System.debug('The Product is =' +prod);
         
    }
}