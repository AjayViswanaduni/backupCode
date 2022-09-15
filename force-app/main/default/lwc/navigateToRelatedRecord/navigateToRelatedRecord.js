import { LightningElement } from 'lwc';
import{NavigationMixin} from 'lightning/navigation';
export default class NavigateToRelatedRecord extends  NavigationMixin(LightningElement) {
    relatedRecordHandler(){
        this[NavigationMixin.Navigate]({
            type:'standard__recordRelationshipPage',
            attributes:{
                recordId:'0015g00000C6IsIAAV',
                objectApiName:'Account',
                relationshipApiName:'Contacts',
                actionName:'view'
            }
        })
    }
    webPageHandler(){
        this[NavigationMixin.Navigate]({
            type:'standard__webPage',
            attributes:{
                url:"https://www.facebook.com"
            }
        })
    }
}