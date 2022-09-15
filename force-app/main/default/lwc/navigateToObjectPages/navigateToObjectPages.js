import { LightningElement } from 'lwc';
import{encodeDefaultFieldValues} from 'lightning/pageReferenceUtils';
import{NavigationMixin} from 'lightning/navigation';
export default class NavigateToObjectPages extends NavigationMixin(LightningElement) {
    navigateToRecordPage(){
       const defaultValues = encodeDefaultFieldValues({
            FirstName:'Ajay',
            LastName:'Viswanaduni',
            LeadSource:'Other'
        })
        this[NavigationMixin.Navigate]({
            type:'standard__objectPage',
            attributes:{
                objectApiName:'Contact',
                actionName:'new'
            },
            state:{
                defaultFieldValues: defaultValues
            }
        })
    }
    navigateToListView(){
        this[NavigationMixin.Navigate]({
            type:'standard__objectPage',
            attributes:{
                objectApiName:'Contact',
                actionName:'list'
            },
            state:{
                filterName:'Recent'
            }
    }
        )}
        navigateToFiles(){
            this[NavigationMixin.Navigate]({
                type:'standard__objectPage',
                attributes:{
                    objectApiName:'ContentDocument',
                    actionName:'home'
                }
        }
            )}
        }