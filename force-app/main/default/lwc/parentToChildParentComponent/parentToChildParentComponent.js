import { LightningElement,track } from 'lwc';

export default class ParentToChildParentComponent extends LightningElement {
    carouselData =[
        {
            src:"https://www.lightningdesignsystem.com/assets/images/carousel/carousel-01.jpg",
            header:"First Card",
            description:"Description 1",
        },
        {
            src:"https://www.lightningdesignsystem.com/assets/images/carousel/carousel-02.jpg",
            header:"Second Card",
            description:"Description 2",
        },
        {
            src:"https://www.lightningdesignsystem.com/assets/images/carousel/carousel-03.jpg",
            header:"Third Card",
            description:"Description 3",
        }
    ]
   @track percentage=10;
   changeHandler(event){
       this.percentage = event.target.value;
   }
   handleClick(){
       this.template.querySelector('c-slider-child-component').resetSlider();
   }
}