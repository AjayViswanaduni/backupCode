import { LightningElement, wire } from 'lwc';
import { getObjectInfo, getPicklistValues } from 'lightning/uiObjectInfoApi';
import ACCOUNT_OBJECT from '@salesforce/schema/Account';
import INDUSTRY_FIELD from '@salesforce/schema/Account.Industry';
import TYPE_FIELD from '@salesforce/schema/Account.Type';
export default class GetPicklistValuesDemo extends LightningElement {

    selectedIndustry = '';
    selectedType = '';
    industryOptions=[]
    typeOptions=[]

    @wire(getObjectInfo,{objectApiName:ACCOUNT_OBJECT})
    objInfo

    @wire(getPicklistValues,{recordTypeId:'$objInfo.data.defaultRecordTypeId',fieldApiName:INDUSTRY_FIELD})
    picklistValues({data,error}){
        if(data){
            console.log(data)
           this.industryOptions = [...this.generatePicklist(data)]
        }
        if(error){
            console.error(error)
        }
    }
    
    // get options() {
    //     return [
    //         { label: 'New', value: 'new' },
    //         { label: 'In Progress', value: 'inProgress' },
    //         { label: 'Finished', value: 'finished' },
    //     ];
    // }
    generatePicklist(data){
        return data.values.map(item=>({ label: item.label, value: item.value }))
    }
    handleChange(event){
        this.selectedIndustry = event.detail.value;
    }
    @wire(getPicklistValues,{recordTypeId:'$objInfo.data.defaultRecordTypeId',fieldApiName:TYPE_FIELD})
    typePicklistValues({data,error}){
        if(data){
            console.log(data)
           this.typeOptions = [...this.generatePicklist(data)]
        }
        if(error){
            console.error(error)
        }
    }
    handleTypeChange(event){
        this.selectedType = event.detail.value;
    }
}