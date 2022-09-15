import { LightningElement } from 'lwc';
import CONTACT_OBJECT from '@salesforce/schema/Contact';
import NAME_FIELD from '@salesforce/schema/Contact.Name';
import PHONE_FIELD from '@salesforce/schema/Contact.Phone';
import EMAIL_FIELD from '@salesforce/schema/Contact.Email';
import TITLE_FIELD from '@salesforce/schema/Contact.Title';
import ACCOUNT_FIELD from '@salesforce/schema/Contact.AccountId';
export default class LwcRecordEditForm extends LightningElement {
    objectName = CONTACT_OBJECT;
    fields ={
        nameField:NAME_FIELD,
        phoneField:PHONE_FIELD,
        emailField:EMAIL_FIELD,
        titleField:TITLE_FIELD,
        accountField:ACCOUNT_FIELD

    }
    clearHandler(){
        const inputFields = this.template.querySelectorAll('lightning-input-field')
        if(inputFields){
            Array.from(inputFields).forEach(field=>{
                field.reset()
            })
        }
    }
}