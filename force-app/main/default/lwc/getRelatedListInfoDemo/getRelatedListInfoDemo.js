import { LightningElement, wire } from 'lwc';
import { getRelatedListInfo } from 'lightning/uiRelatedListApi';
export default class GetRelatedListInfoDemo extends LightningElement {
    relatedListData
    @wire(getRelatedListInfo,{
        parentObjectApiName:'Account', //THis is an API name of Parent Object that u want to get related list info
        relatedListId:'Opportunities'      //API Name of related list Object
        //recordTypeId:'' //Optional
    })listInfoHandler({data,error}){
        if(data){
            console.log(JSON.stringify(data))
            this.relatedListData = data.displayColumns
        }
        if(error){
            console.error(error)
        }
    }
}