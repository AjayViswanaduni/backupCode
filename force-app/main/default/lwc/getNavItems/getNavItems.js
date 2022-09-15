import { LightningElement, wire } from 'lwc';
import{GetNavItems} from 'lightning/uiAppsApi'
export default class GetNavItemsDemo extends LightningElement {
    @wire(GetNavItems,{
        navItemNames:['standard-Account'],
        pageSize:30
    })
    navItemsHandler({data}){
        if(data){
            console.log(data)
        }
    }
}