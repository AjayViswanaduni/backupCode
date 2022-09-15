import { LightningElement } from 'lwc';
import{NavigationMixin} from 'lightning/navigation';
export default class NavigateToRecordPage extends NavigationMixin(LightningElement) {
   
    viewHandler(){
        this[NavigationMixin.Navigate]({
            type:'standard__recordPage',
            attributes:{
                recordId:'8005g0000005Xt0AAE',
                objectApiName:'Contract',
                actionName:'view'
            }
        })
    }

    editHandler(){
        this[NavigationMixin.Navigate]({
            type:'standard__recordPage',
            attributes:{
                recordId:'8005g0000005Xt0AAE',
                objectApiName:'Contract',
                actionName:'edit'
            }
        })
    }
}