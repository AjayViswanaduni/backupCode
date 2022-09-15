import { LightningElement } from 'lwc';
import { loadStyle } from 'lightning/platformResourceLoader';
import input from '@salesforce/resourceUrl/input'
export default class InputIcon extends LightningElement {
    showPassword = false

    get passwordIcon(){
        return this.showPassword ? 'utility:preview':'utility:hide'
    }
    get passwordType(){
        return this.showPassword ? 'text':'password'
    }
    connectedCallback(){
        loadStyle(this, input).then(()=>{
            console.log("styles loaded successfully")
        }).catch(error=>{
            console.error(error)
        })
    }
    clickHandler(){
        this.showPassword = !this.showPassword
    }
}