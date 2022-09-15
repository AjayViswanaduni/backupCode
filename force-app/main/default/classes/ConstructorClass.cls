public Virtual class ConstructorClass {
    public ConstructorClass(){
        this('Aj');//we are calling parameterized constructor using this statement
        System.debug('Default Constructor');
    }
    Public ConstructorClass(String Str){
        System.debug('Parameterised Constructor');
    }
}