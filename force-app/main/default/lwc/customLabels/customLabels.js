import { LightningElement } from 'lwc';
import DESCRIPTION_ONE from '@salesforce/label/c.descriptionOne';
import DESCRIPTION_TWO from '@salesforce/label/c.descriptionTwo';
export default class CustomLabels extends LightningElement {
    Labels={
    descriptionOne:DESCRIPTION_ONE,
    descriptionTwo:DESCRIPTION_TWO
    }
}