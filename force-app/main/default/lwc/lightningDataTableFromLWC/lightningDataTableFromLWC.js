import { LightningElement,track,wire } from 'lwc';
import getContacts from '@salesforce/apex/LightningDataTable.getContacts';

const COLS =[
    {label:'Contact Last Name',fieldName:'LastName'},
    {label:'Contact Email',fieldName:'Email'},
    {label:'Contact Id',fieldName:'Id'}
];

export default class LightningDataTableFromLWC extends LightningElement {
    @track cols = COLS;
    @wire(getContacts)Contact;
}