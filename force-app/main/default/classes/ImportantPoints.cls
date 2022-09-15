public class ImportantPoints {
  
    // Variable
    // If we want to identify the address of our value in the database, we call that using Variable
    // Variables represent address location of a value
    // DataType Variable name/Identifier name/Reference name = value;
    // Integer a = 10;
    // String Name = 'Ajay';
    // DataTypes are of two types 
    // 1)Primitive DataType-It allows Single Values-EX: Integer,Decimal,String,ID,Date,Date Time,Boolean
    // 2)Reference DataTypes-It allows Multiple Values-EX: Apex Classes,sObject,Arrays,Collection,

    
    //Inheritance
    // Inorder to reuse the code that is already existing , we use inheritance
    // Ex: we have two classes Parent and Child, and parent class have one method
    // Inorder to include the Parent class method in child class, we use 'extends' keyword in child class
    // By default every class is final class, and we cannot extend the final class
    // So we declare the parent class as Virtual class
    
    
    //Polymorphism
    //Overloading,Overriding
    //Overloading- Method names are same and arguments must be different(No/type/order of arguments)
    //let's say we have add method with different arguments,we can execute the add method in various types depending the inputs we pass
    //Overriding- Replacing the existing functionality with new functionality-It depends on object creation-uses "extends " keyword
    //by default every class&methods are final-Inorder to override we need to make the class and method as virtual
    
    
    //Abstract Class
    //Concrete Method is nothing but a method that contains the declarative and implementation part
    //Abstract method is an incomplete method which will not contain a body or something
    //Abstract Class is a combination of Concrete Method,Abstract Method,Both or none
    //Inorder to make the class as abstract class-append abstract keyword while creating class
    //Inorder to make the method as abstract method/incomplete method-append abstract keyword to the method
    //And we should also extend this abstract class in other class and there we use override keyword to use the method
    
    //When to use Abstract Class and When to use Interface
    //If all the methods logic is same , we use parent class as Concrete Class
    //If some methods implementation is same and some methods implementation is different, we use abstract class as parent class
    //If all methods implementation is different, we use Interfaces as parent class
    
    
    //Interface
    //Interface is fully abstraction, Abstact class is partial Absraction
    //Interface will consists of Declarations only
    //We Implement the methods with different body in different Classes
    //To use use an interface in a class, we use "Implements" keyword
    
    
    //Constructor
    //A special kind of method, which executes automatically whenever an object gets created
    //It is used for initialization of values
    //It does not contain any return method not even void.
    //It has the name as the classname...Syntax-Public ClassName();
    //Constructor can be executed only once in the entire lifetime
    
    
    //Arrays
    //Arrays are used to store the Homogenious Data Types of same Type
    //Arrays size is fixed,once determined we cannot increase or decrease the size
    //It is an Index Based
    //Syntax: DataType[] variableName = new DataType[Size];
    //If we want to store different datatypes in one array,we need to use the datatype as SObject or Object
    //It have lot of drawbacks
    
    
    //Collections
    //List,Set,Map
    //List
    //List Can contain Duplicate Values,Index Based,It allows multiple null values
    //To add any values to the list we use add()method
    //we use sort() method to sort the values either ascending or dictionary order
    //It will not eliminate Duplicate Values
    //to add any value to specific index-add(index,value)-Ex-add(2,6)
    //set(2,6)=>It replaces the 2nd index with the value
    //If there are two list collections, we can add all the values in one list to other list by using var.addAll(ListName)
    //ListName.size() will shows the number of elements in the list
    //to remove any value from the list we use ListName.remove(Index);
    //to empty the list,listname.clear();
    //If we want to insert multiple types of objects at once,we use Bulkify List
    //List<sobject> obj = new List<sobject>();
    //We can create any type of objects and we can store them in the list and then we insert them at once
    
    //set
    //allows only unique values
    //It doesn't allow duplicate values
    //It maintains Dictionary order
    //It allows only one Null Value
    //It contains of add(Element),remove(element),get(element),size();Contains(element),addAll(List/set),
    
    
    //Map
    //Map is a combination of Key,Value Pair
    //Here keys are Primitive Data Types and Values are Reference/Primitive
    //They are stored in the dictionary order of Keys as they are unique
    //We have put(Key,value) method to stores the values in the map
    //To get any Value from the Map,we have get(Key) 
    //to get all the keys inside a Map, we have Set<DataType> VarName = mapName.KeySet();
    //To remove any value,we do that using Remove(Key)
    //To get the size of Map,we use MapName.Size() method
    
    
    //SOQL Queries
    //List<Account> accList = [Select id,name,AccountNumber,Rating from Account]
    
    
    
    //Method Principles
    //1. Every method will perform a well defined task
    //2. Every Method is invoked by an object=>obj.method
    //3. To perform a task we require some values
    //4. If the values are already defined in the data members,do not supply any inputs, if not defined then supply required inputs

      
    //How to identify return type for method
    //1. After performing task, if the result is stored in data member=> dont return any value=>void
    //2. Else return the value and specify its datatype as return Type
    
    //Static Data Members and Static Member Method
//If the value of a data member is same entire the class=>We use Static keyword to the Data Member and it becomes the Class Variable
//If the method should be invoked even before creating the object, we provide static to this method and we invoke the method as className.Method();
//Static Member method can access Static Data Members but cannot access Non Static Data Members=> ClassName.mtd();
//Non-static Member Method can access both Non-Static and Static Data Members=>className obj = new ClassName();=>Obj.mtd();

    
//Class Variable=>If the variable is provided static keyword,it becomes class variable..It is created inside the class and outside the member method
//Object Variable=>Belongs to object,whenever object is created memory is allocated
//Local Variable=>It belongs to the method,values are stored only upto the method gets executed
}