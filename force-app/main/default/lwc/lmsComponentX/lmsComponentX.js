import { LightningElement, wire } from 'lwc';
import SampleMessageChannel from '@salesforce/messageChannel/SampleMessageChannel__c';
import { subscribe, MessageContext, unsubscribe,APPLICATION_SCOPE} from 'lightning/messageService';
export default class LmsComponentX extends LightningElement {
    receivedMessage
    subscription
    @wire(MessageContext)
context;

connectedCallback(){
this.subscribeMessage()
}
    subscribeMessage(){
        this.subscription =  subscribe(this.context,SampleMessageChannel,(message)=>{this.handleMessage(message)}, {scope:APPLICATION_SCOPE})
//subscribe(messageContext,messageChannel,listener,subscriberOptions)
//     subscribe(this.context, SampleMessageChannel, (message)=>this.handleMessage(message)} , {scope:APPLICATION_SCOPE})
// }
}
 handleMessage(message){
    this.receivedMessage = message.recordData.value? message.recordData.value : "No message Published";
 }
 unsubscribeHandler(){
    unsubscribe(this.subscription)
    this.subscription=null;
 }
}