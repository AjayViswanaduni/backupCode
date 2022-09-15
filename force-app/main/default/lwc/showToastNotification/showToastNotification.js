import { LightningElement } from 'lwc';
import {ShowToastEvent} from 'lightning/platformShowToastEvent';
export default class ShowToastNotification extends LightningElement {
toastHandler1(){
    this.showToast("Succesfull!!","{0} Show Toast Method got called Succesfully {1}","success");
}
toastHandler2(){
    this.showToast("Error!!","Error 404","error");
    }
    toastHandler3(){
    this.showToast("Warning!!","Warning warning warning@@","warning");
        }
        toastHandler4(){
    this.showToast("Information!!","Some Info 404","info");
        }
        showToast(title,message,variant){
            const event = new ShowToastEvent({
                title,
                message,
                variant,
                messageData:[
                    'Salesforce',{
                        url:'http://www.salesforce.com/',
                        label:'Click Here'
                    }
                ]
            })
            this.dispatchEvent(event);
        }
}