import { LightningElement } from 'lwc';
import SAMPLEPIC from '@salesforce/resourceUrl/SalesforceLogo';
import AjayPhoto from '@salesforce/resourceUrl/Ajay_Photo';
import Walking_Image from '@salesforce/resourceUrl/Walking_Image';
export default class StaticImages extends LightningElement {
    sfdcImage = SAMPLEPIC
    ajayPic = AjayPhoto
    walkingImage = Walking_Image
}