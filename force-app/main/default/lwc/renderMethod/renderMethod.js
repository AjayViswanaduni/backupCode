import { LightningElement } from 'lwc';
import templateSignIn from './templateSignIn.html'
import templateSignUp from './templateSignUp.html'
import templateRender from './renderMethod.html'
export default class RenderMethod extends LightningElement {
    selectedBtnLabel=''
    render(){
        return this.selectedBtnLabel === 'Signup' ? templateSignUp : 
        this.selectedBtnLabel==='Signin'? templateSignIn:
        templateRender
    }
    changeHandler(event){
        this.selectedBtnLabel = event.target.label;
    }
    submitHandler(event){
        console.log(`${event.target.label} Successful!!`);
    }
}