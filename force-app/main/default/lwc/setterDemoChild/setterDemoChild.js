import { api, LightningElement } from 'lwc';

export default class SetterDemoChild extends LightningElement {
    userdata;
    @api 
    get details(){
        return this.userdata
    }
    set details(data){
        let newAge = data.Age*2
     this.userdata = {...data, Age:newAge,"Location":'Tirupati'};
    }
}