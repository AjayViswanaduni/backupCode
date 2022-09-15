import { LightningElement } from 'lwc';

export default class DateValidation extends LightningElement {
    startDate
    endDate
    error
    dateHandler(event){
        const{name,value} = event.target
        this[name] = value//this.startDate=value
    }
    submitHandler(){
       if(this.validateDate(this.startDate,this.endDate)){
        console.log('Date is Valid')
       }else{
        this.error = "Start Date cannot be greater than End Date"
       }
    }
    validateDate(startDate,endDate){
        return new Date(startDate).getTime() < new Date(endDate).getTime()
    }
}