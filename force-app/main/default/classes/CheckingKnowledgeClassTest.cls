@isTest
public class CheckingKnowledgeClassTest {
    Public static testMethod void testing(){
        CheckingKnowledgeClass a = new CheckingKnowledgeClass(30,6);
       Integer add = a.Addition();
        System.debug('Addition of two values is :' +add);
       Integer div = a.Division();
        System.debug('Division of two values is :' +div);
       Integer mul = a.Multiplication();
        System.debug('Product of two values is :' +mul);
       Integer sub = a.Subtraction();
        System.debug('Substraction of two values is :' +sub);
    }
}