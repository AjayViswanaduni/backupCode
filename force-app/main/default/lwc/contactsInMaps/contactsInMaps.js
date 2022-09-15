import { LightningElement, wire } from 'lwc';
import getContacts from '@salesforce/apex/ContactsController.getContacts';
export default class ContactsInMaps extends LightningElement {
    mapMarkers=[]
    markersTitle='Contact Location'
    @wire(getContacts)
    wireHandler({data,error}){
        if(data){
            console.log(data)
            this.formatResponse(data)
        }
        if(error){
            console.error(error)
        }
    }
    formatResponse(data){
        this.mapMarkers = data.map(item=>{
            return{
                location:{
                    Street      : item.MailingStreet || '',
                    City        : item.MailingCity || '',
                    PostalCode  : item.MailingPostalCode || '',
                    State       : item.MailingState || '',
                    Country     : item.MailingCountry || ''
                },
                icon:'utility:salesforce1',
                title:item.Name,
                value:item.Name,
                description:item.Description
            }
        })
        this.selectedMarker = this.mapMarkers.length && this.mapMarkers[0].value
    }
    callMarkerHandler(event){
        this.selectedMarker = event.detail.selectedMarkerValue
    }
}