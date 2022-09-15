@isTest
public class CalculatorClassTest {
    public static testMethod void main(){
        CalculatorClass obj = new CalculatorClass();
        obj.setValues(10, 20);
           Integer addition =  obj.add();
        system.debug('Addition ' +addition);
         Integer product = obj.prod();
                system.debug('Product is ' +product);

    }
}