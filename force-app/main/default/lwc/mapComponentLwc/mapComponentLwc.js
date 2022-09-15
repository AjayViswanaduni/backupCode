import { LightningElement } from 'lwc';

export default class MapComponentLwc extends LightningElement {
    mapMarkers
    listView
    zoomLevel
    connectedCallback(){
        this.mapMarkers=[{
            location:{
                City:"Tirupati",
                Country:"India",
                PostalCode:"517501",
                State:"AP",
                Street:"Tirupati"
            },
            title:"Ajay Viswanaduni",
            description:"I am here",
            icon:"standard:account"
        }
    ];

    this.zoomLevel=20;
    this.listView="visible";
    }
}