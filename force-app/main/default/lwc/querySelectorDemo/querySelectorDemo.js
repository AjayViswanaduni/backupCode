import { LightningElement } from 'lwc';

export default class QuerySelectorDemo extends LightningElement {
    btnAction(event){
     const elem = document.querySelectorAll('h1')
     console.log(elem)

    }
}