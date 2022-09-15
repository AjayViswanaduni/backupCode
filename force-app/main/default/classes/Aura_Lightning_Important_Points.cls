public class Aura_Lightning_Important_Points {
//1=>Inorder to store the values we need variables, we store the values of any particular field using <aura:attribute/> tag.
//Aura:attriubute required 3 parameters name="" type="" & value=""

//2=>To get the lightning look and feel we use Lightning:card
//<Lightning:card/> contains title,actions,body,footer
//We use <aura:set attribute="title/actions/footer"/> tag for building the lightning look
//We can use the lightning design system CSS by extending the application as extends="force:slds"

//3=>We use Lightning:button/buttonMenu/buttonGroup for creating buttons
    //And these buttons accept the label="" onclick/several actions="{!c.someMethod}"
    
//4=>To input the values on the lightning page we use Lightning:input tag which accepts name="" type="" 

//5=>
}