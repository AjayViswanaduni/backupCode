@isTEst
public class SquareClassTest {
    public static testMethod  void main(){
        //create objects
        SquareClass phone = new SquareClass();
        //call the methods and check behaviour
     phone.setValues(4,6);
     Integer area = Phone.calcArea();   
        System.debug('Phone are is ' +area);
        SquareClass book = new SquareClass(6,6);
            Integer book_area = book.CalcArea();
            System.debug('Area of book is ' +book_area);
        }
    }