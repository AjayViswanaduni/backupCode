import { api, LightningElement, track } from 'lwc';

export default class SliderChildComponent extends LightningElement {
    val = 20;
    changeHandler(event){
        this.val = event.target.value;
    }
    @api resetSlider(){
        this.val = 50;
    }
}