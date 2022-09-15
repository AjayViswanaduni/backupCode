import { LightningElement } from 'lwc';
import hasViewAllData from '@salesforce/userPermission/ViewAllData';
import hasCustomPermissions from '@salesforce/customPermission/show_Data';
export default class CheckPermissions extends LightningElement {
    get hasViewAllDataAvailable(){
        return hasViewAllData;
    }
    get hasCustomPermissionsAvailable(){
        return hasCustomPermissions;
    }
}