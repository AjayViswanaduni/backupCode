import { LightningElement ,api} from 'lwc';
import ACCOUNT_OBJECT from '@salesforce/schema/Account';
import ACCOUNT_NAME from '@salesforce/schema/Account.Name';
import ACCOUNT_Phone from '@salesforce/schema/Account.Phone';
import ACCOUNT_Industry from '@salesforce/schema/Account.Industry';
export default class Lds_RecordForm extends LightningElement {
    @api recordID;
    myFields =[ACCOUNT_OBJECT,ACCOUNT_NAME,ACCOUNT_Phone,ACCOUNT_Industry];
}