import { LightningElement } from 'lwc';

export default class LifeCycleChild extends LightningElement {
    
    constructor(){
        super()
        console.log('Child Constructor got Invoked');
    }
    connectedCallback(){
        console.log('Child ConnectedCallback method got Invoked');
        throw new Error('Loading of Child Component Failed');
    }
    renderedCallback(){
        console.log('Child renderedCallback method got Invoked');
    }
    name;
    changeHandler(event){
        this.name = event.target.value;
    }
    disconnectedCallback(){
        alert('Child disConnectedCallback method got Invoked');
    }
}