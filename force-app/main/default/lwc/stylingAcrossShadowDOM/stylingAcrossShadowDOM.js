import { LightningElement } from 'lwc';

export default class StylingAcrossShadowDOM extends LightningElement {
    isLoaded = false;
    renderedCallback(){
        if(this.isLoaded) return
        const style = document.createElement('style')   
        style.innerText=`c-styling-across-shadow-d-o-m .slds-button{
            background-color:blue ;
            color: yellow;
        } `
        this.template.querySelector('lightning-button').appendChild(style)
        this.isLoaded=true;
    }
}