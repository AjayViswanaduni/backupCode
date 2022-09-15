import { api, LightningElement } from 'lwc';

export default class ProgressBarChildComponent extends LightningElement {
    @api barPercentage;
}