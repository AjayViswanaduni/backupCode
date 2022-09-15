import { LightningElement } from 'lwc';

export default class ChildToParentParentComponent extends LightningElement {
    msg;
     showModal=false;
     changeHandler(){
         this.showModal = true;
     }
     eventHandler(event){
         this.msg = event.detail.note;
         this.showModal = false;
     }
}