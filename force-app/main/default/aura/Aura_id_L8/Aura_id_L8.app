<aura:application extends="force:slds">
    <lightning:input label="First Name" type="text" aura:id="fname"/><br/>
    <lightning:input label="Last Name" type="text" aura:id="lname"/><br/>
    <lightning:input label="Phone" type="phone" aura:id="ph"/><br/>
    <lightning:button label="Submit" onclick="{!c.InvokeAction}"/>
</aura:application>