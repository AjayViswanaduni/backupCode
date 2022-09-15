import { LightningElement, wire } from 'lwc';
import SampleMessageChannel from '@salesforce/messageChannel/SampleMessageChannel__c';
import { publish, MessageContext } from 'lightning/messageService';
export default class LmsComponentA extends LightningElement {
    inputValue;
    @wire(MessageContext)
    context;

    inputHandler(event){
        this.inputValue = event.target.value;
    }

    publishMessage(){
        const Message={
            recordData:{
                value:this.inputValue
            }
        }
        //publish(messageContext, messageChannel, message )
        publish(this.context, SampleMessageChannel, Message)
    }

}