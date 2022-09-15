public class WrapperClassForStudent {
    public List<StudentWrap> WrappList{set;get;}
    //Constructor
    Public WrapperClassForStudent(){
        WrappList = new List<StudentWrap>();
        
        //adding objects to the list
        WrappList.add(new StudentWrap());
        WrappList.add(new StudentWrap());
        WrappList.add(new StudentWrap());
    }
    //Create a WrapperClassFor Student Object
    Public class StudentWrap{
        Public String sname{set;get;}
        Public String squalification{set;get;}
    }
}