import { LightningElement, wire } from 'lwc';
import { getObjectInfos } from 'lightning/uiObjectInfoApi';
import ACCOUNT_OBJECT from '@salesforce/schema/Account';
import Opportunity_OBJECT from '@salesforce/schema/Opportunity';
export default class GetObjectInfosDemo extends LightningElement {
    objInfos;
    objectApiNames = [ACCOUNT_OBJECT,Opportunity_OBJECT];

    @wire(getObjectInfos,{ objectApiNames: '$objectApiNames' })
    objectsData({data}){
        if(data){
            console.log(data)
            this.objInfos = data
        }
    }
}