public class ConstructorClass2 extends ConstructorClass{
    Public ConstructorClass2(){//default constructor
     this('Aj');//we can only use this statement right at the beginning of the constructor
        System.debug('Def Const');
    }
    Public ConstructorClass2(String Str){//parametirised Constructor
        Super();
        System.debug('Par Const');
    }
}