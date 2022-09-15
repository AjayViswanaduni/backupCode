import { api, LightningElement, wire } from 'lwc';
import { getRelatedListCount } from 'lightning/uiRelatedListApi';
export default class GetRelatedListCountDemo extends LightningElement {
    @api recordId;
    relatedData
     @wire(getRelatedListCount,{
        parentRecordId: '$recordId',//THe id of the parent record you want to get related list for
        relatedListId:'Contacts'//The APi name of a related list object such as opportunities or contacts
     })listCountHandler({data,error}){
        if(data){
            console.log(JSON.stringify(data))
            this.relatedData = data
        }
        if(error){
            console.error(error)
        }
     }
}