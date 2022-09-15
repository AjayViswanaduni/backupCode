<aura:application extends="force:slds" controller="auraEnabled_L11">
    <aura:attribute name="accRecord" type="Account" default="{'sObjectType':'Account', 
                                                                Industry:'Education'
                                                             }"/>	
    
    <lightning:card title="create Account" iconName="standard:account">
    <aura:set attribute="actions" >
      <lightning:button label="Create Account" onclick="{!c.createAccount}"/>
        <lightning:button label="Cancel" onclick="{!c.refresh}"/>
    </aura:set>
        <lightning:input label="Account Name" value="{!v.accRecord.Name}"/>
        <lightning:input label="Account Phone" value="{!v.accRecord.Phone}"/>
        <lightning:input label="Account Industry" value="{!v.accRecord.Industry}"/>
    </lightning:card>
</aura:application>