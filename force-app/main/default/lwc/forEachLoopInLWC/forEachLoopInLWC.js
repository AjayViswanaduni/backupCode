import { LightningElement } from 'lwc';

export default class ForEachLoopInLWC extends LightningElement {
cars = ["Hyundai","Audi","Mercedes","Ferrari","Rolls Royce","Lamborgini"];
ceoList=[
    {
        id:1,
        company:"Salesforce",
        CEO:"Marc Benioff"
    },
    {
        id:2,
        company:"Amazon",
        CEO:"Jeff Bezos"
    },
    {
        id:3,
        company:"Facebook",
        CEO:"Mark Zukerberg"
    },
    {
        id:4,
        company:"Apple",
        CEO:"Tim Cook"
    },
    {
        id:5,
        company:"Google",
        CEO:"Sundar Pichai"
    },

]
}