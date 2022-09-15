import { LightningElement } from 'lwc';

export default class LifeCycleParent extends LightningElement {
    isChildVisible = false;
    constructor(){
        super()
        console.log('Parent Constructor got Invoked');
    }
    connectedCallback(){
        console.log('Parent ConnectedCallback method got Invoked');
    }
    renderedCallback(){
        console.log('Parent renderedCallback method got Invoked');
    }

    handleClick(){
        this.isChildVisible = !this.isChildVisible;
    }
    errorCallback(error,stack){
        console.log(error.message);
        console.log(stack);
    }
}