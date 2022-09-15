import { LightningElement } from 'lwc';

export default class ArrayExample extends LightningElement {

    cities = ['Hyderabad','Vishakapatnam','Kakinada','Tirupati'];

    employees =
    [
        {'name':'Ajay','age':24,'id':1192},
        {'name':'Venkatesh','age':35,'id':1200}
    ];
}