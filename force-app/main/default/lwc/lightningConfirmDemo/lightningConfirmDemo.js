import { LightningElement } from 'lwc';
import LightningConfirm from 'lightning/confirm'
export default class LightningConfirmDemo extends LightningElement {
    async confirmHandler(){
     const result =   await LightningConfirm.open({
            message:"Would you like to refresh the page",
            //variant:"headerless"    //to hide the header
            label:"Are you sure?",
            theme:"warning"//similar to alert
        })
        console.log(result)
        //on click of ok the result will be boolean true else false
        if(result){
            location.reload()
        }
    }    
}