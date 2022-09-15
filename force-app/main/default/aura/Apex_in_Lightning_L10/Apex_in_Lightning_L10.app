<aura:application extends="force:slds" controller="AuraEnabledClass">
    <aura:attribute name="MyName" type="string"/>
    <lightning:button label="Get Name" onclick="{!c.invoke}"/><br/>
    <br/><br/>
  <p style="font-size:40px;color:skyBlue">{!v.MyName}</p>  
</aura:application>