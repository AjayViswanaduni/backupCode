import { LightningElement } from 'lwc';

export default class ConditionalRendering extends LightningElement {

    name = "Marc Benioff";
    details = "CEO of SalesForce";
    isVisible = false;
    showCEO(){
        this.isVisible = !this.isVisible; 
    }

}