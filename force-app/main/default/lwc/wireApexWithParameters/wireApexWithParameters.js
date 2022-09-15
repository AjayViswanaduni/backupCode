import { LightningElement, wire } from 'lwc';
import filterAccountByType from '@salesforce/apex/AccounttController.filterAccountByType';
export default class WireApexWithParameters extends LightningElement {
    selectedType=''
    @wire(filterAccountByType,{type:'$selectedType'})
    filterAccounts
    get typeOptions(){
        return[
            {label:"Customer - Channel",value:"Customer - Channel"},
            {label:"Customer - Direct",value:"Customer - Direct"}
        ]
    }
    typeHandler(event){
        this.selectedType = event.target.value
    }
}