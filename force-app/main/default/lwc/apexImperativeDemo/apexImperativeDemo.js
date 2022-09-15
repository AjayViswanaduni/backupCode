import { LightningElement } from 'lwc';
import getAccounts from '@salesforce/apex/AccounttController.getAccounts';
export default class ApexImperativeDemo extends LightningElement {
    accounts
    handleClick(){
        getAccounts().then(result=>{
            console.log(result)
            this.accounts = result
        }).catch(error=>{
            console.error(error)
        })
    }
}