import { LightningElement, track } from 'lwc';

export default class FirstComponent extends LightningElement {
    fullName = "Ajay Viswanaduni";
    place = "India";
    changeHandler(event){
        this.fullName = event.target.value;
    }
    @track address= {
        city: 'Kakinada',
        pin: '533401'
    }
    trackHandler(event){
        this.address.city = event.target.value;
    }
}