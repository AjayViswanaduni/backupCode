<aura:application extends="force:slds">
    <aura:attribute name="flag" type="boolean" default="false"/>
    <lightning:button label="Button 1" onclick="{!c.btnAction}"/>
    {!v.body}
    <aura:if isTrue="{!v.flag}">
   <lightning:button label="Button 3"/>
    </aura:if>
    
</aura:application>