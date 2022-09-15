import { api, LightningElement } from 'lwc';

export default class LwcAuraCoexistence extends LightningElement {
    @api title;
    auraHandler(){
    const event = new CustomEvent('sendmsg',{
        detail:
        {
            "msg":"Hi from LWC"
        }
    })
    this.dispatchEvent(event)
}
}