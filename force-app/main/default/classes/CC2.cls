public with sharing class CC2 {

    public Integer result { get; set; }

    public Integer num2 { get; set; }

    public Integer num1 { get; set; }

    public PageReference division() {
     result = num1/num2;
        return null;
    }


    public PageReference product() {
    result = num1*num2;
        return null;
    }


    public PageReference diff() {
    result = num1-num2;
        return null;
    }


    public PageReference addition() {
    result = num1+num2;
        return null;
    }

}