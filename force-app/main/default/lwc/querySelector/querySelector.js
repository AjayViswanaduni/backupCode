import { LightningElement } from 'lwc';

export default class QuerySelector extends LightningElement {
userNames = ["AJay","AJ","Jay","AA"];
fetchDetails(){
    console.log('Im in fetch method');
const elem = this.template.querySelector('h1');
elem.style.border = "1px solid red";
console.log(elem.innerText);


const userElements = this.template.querySelectorAll('.name');
Array.from(userElements).forEach(Element => {
    console.log(Element.innerText);    
    Element.setAttribute("title",Element.innerText);   
})
const childElem = this.template.querySelector('.child');
childElem.innerHTML = '<p>I am child Element</p>';

}
}