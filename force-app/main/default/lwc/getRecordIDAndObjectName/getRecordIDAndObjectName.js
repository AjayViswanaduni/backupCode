import { LightningElement,api } from 'lwc';

export default class GetRecordIDAndObjectName extends LightningElement {
    @api recordId;
    @api objectApiName;
}