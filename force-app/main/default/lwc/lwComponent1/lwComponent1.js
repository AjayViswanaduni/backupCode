import { LightningElement,track } from 'lwc';

export default class LwComponent1 extends LightningElement {

     num1;
     num2;
    @track resultValue;

name = 'Ajay';
age = 25;
phone = '9885634248';
id  = 1192;

myname='Allu Arjun';
myphone='9876543210';
mysalary=10000000;
finalsal;

    doAction(){

        this.name = 'Ajay Viswanaduni';
        this.age = 24;
        this.phone = '8074313338';
        this.id = 1192;

        let a = this.mysalary;
        this.finalsal = a*2;
    }

    callme(event){
        const evtName = event.target.name;
        if(evtName == 'numb1'){
            this.num1 = event.target.value;
        }
        else{
            this.num2 = event.target.value;
        }
    }

    addAction(){
        const a = parseInt(this.num1);
        const b = parseInt(this.num2);
        this.resultValue='The sum of two numbers is:'+(a+b);
    }
    subAction(){
        const a = parseInt(this.num1);
        const b = parseInt(this.num2);
        this.resultValue='The sum of two numbers is:'+(a-b);
    }
    mulAction(){
        const a = parseInt(this.num1);
        const b = parseInt(this.num2);
        this.resultValue='The sum of two numbers is:'+(a*b);
    }
    divAction(){
        const a = parseInt(this.num1);
        const b = parseInt(this.num2);
        this.resultValue='The sum of two numbers is:'+(a/b);
    }
}