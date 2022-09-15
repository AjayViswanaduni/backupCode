import { LightningElement } from 'lwc';
import searchAccounts from '@salesforce/apex/AccounttController.searchAccounts';
export default class ApexImperativeWithParams extends LightningElement {
    searchKey = ''
    accounts
    timer
    searchHandler(event){
        window.clearTimeout(this.timer)
        this.searchKey = event.target.value
        this.timer = setTimeout(()=>{
            this.callApex()
        },2000)
    }
    callApex(){
    searchAccounts({searchKey:this.searchKey})
        .then(result=>{
            this.accounts = result
        }).catch(error=>{
            console.error(error)
        })

    }
}