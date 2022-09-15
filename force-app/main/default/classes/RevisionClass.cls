public class RevisionClass {
    //Nested-If
    public static void nestedIf(){
        Integer s1, s2, s3, s4, s5, Total, Avg;
        s1=50;
        s2=60;
        s3=70;
        s4=8;
        s5=90;
        total = s1+s2+s3+s4+s5;
        IF (s1>=35 && s2>=35 && s3>=35 && s4>=35 && s5>=35)
        {
            System.debug('You Have been Passed');
            System.debug('You Total Marks are: '+total);
            Avg=total/5;
            if (avg>=60)
            {
                System.debug('You got Grade A');
            }
            else if (avg>=50 && avg<=60)
            {
                System.debug('You got Grade B');
            }
            else if (avg>=35 && avg<=50)
            {
                System.debug('You got Grade C');
            }
        }
        Else
        {
            System.debug('You have been Failed');
            System.debug('You Total Marks are: '+total);
            Avg=total/5;
            if (avg>=60)
            {
                System.debug('You got Grade A');
            }
            else if (avg>=50 && avg<=60)
            {
                System.debug('You got Grade B');
            }
            else if (avg>=35 && avg<=50)
            {
                System.debug('You got Grade C');
            }
        }
    }
    //while
    Public static void whileEx(){
        integer table,counter;
        table=5;
        counter=1;
        while (counter<=10)
        {
            system.debug(table+'*' + counter + '=' + table*counter);
            counter ++;
        }
    }
    //do while
    Public static void doWhile(){
        integer mynumber=100;
        do
        {
            system.debug('No is: '+mynumber);
            mynumber --;
        }
        while (mynumber>=1);
    }
    //for each
    Public static void forLoop(){
        for (integer table=5, counter=1; counter<=10; counter++)
        {
            system.debug(table +'*' + counter + '=' + table*counter);
        }
    }
}