import { LightningElement } from 'lwc';
import{NavigationMixin} from 'lightning/navigation'
export default class NavigateToLwc extends NavigationMixin(LightningElement) {
    lwcHandler(){
        var defination = {
            componentDef:'c:lwcTarget',
            attributes:{
                recordId:'98249598542'
            }
        }
        this[NavigationMixin.Navigate]({
            type:'standard__webPage',
            attributes:{
                url:'/one/one.app#'+btoa(JSON.stringify(defination))
            }
        })
    }
}