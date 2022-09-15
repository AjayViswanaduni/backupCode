import { LightningElement } from 'lwc';
import LightningAlert from 'lightning/alert';
export default class LightningAlertDemo extends LightningElement {
     async alertHandler(event){
        const{name} = event.target 
         //earlier we used to write window.alert()
        await LightningAlert.open({
            //variant:"headerless",
            message:"Hi,this is from Lightning Alert",
            label:`I am ${name} Alert header`,
            theme:name
        })
        let x= 3
        let y = 4
        this.add(x,y)
    }
    add(a,b){
        console.log(a+b)
    }
}