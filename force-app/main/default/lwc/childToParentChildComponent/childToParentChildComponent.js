import { LightningElement } from 'lwc';

export default class ChildToParentChildComponent extends LightningElement {
    closeHandler(){
            const myEvent = new CustomEvent('close',{
                detail: {
                    bubbles:true,
                    note:"Modal Closed"
                }
            })
            this.dispatchEvent(myEvent)
    }
    footerEvent(){
        console.log("Footer Event got Called");
    }
}