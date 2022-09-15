import { LightningElement ,api} from 'lwc';

export default class Lds_RecordEditForm extends LightningElement {
    @api recID = '0015g00000gIJXrAAO';
    
    refreshAction(event){
        const inputFields = this.template.querySelectorAll('lightning-input-field');
        inputFields.forEach(field=> 
            {
                field.value ="";
            }
            
         ); 
            
    }
}