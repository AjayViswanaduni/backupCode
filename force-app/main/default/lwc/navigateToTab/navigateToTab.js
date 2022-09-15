import { LightningElement } from 'lwc';
import{NavigationMixin} from 'lightning/navigation';
export default class NavigateToTab extends NavigationMixin(LightningElement) {
    tabHandler(){
        this[NavigationMixin.Navigate]({
            type:'standard__navItemPage',
            attributes:{
                apiName:'Lightning_Message_Service'
            }
        })
    }
}