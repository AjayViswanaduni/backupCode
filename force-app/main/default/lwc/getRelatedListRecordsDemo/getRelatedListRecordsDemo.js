import { api, LightningElement, wire } from 'lwc';
import { getRelatedListRecords } from 'lightning/uiRelatedListApi';
export default class GetRelatedListRecordsDemo extends LightningElement {
    recordList
    @api recordId;
    @wire(getRelatedListRecords,{
        parentRecordId:'$recordId',//record Id for which we want to get the related records
        relatedListId:'Contacts',//Api name of the related list
        fields:['Contact.Name','Contact.Id']  //Optional
    })listRecordsHandler({data,error}){
        if(data){
           console.log(data)
           this.recordList = data.records
        }
        if(error){
            console.error(error)
        }
    }
}