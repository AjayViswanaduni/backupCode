<aura:application extends="force:slds">
    <aura:attribute name="flag1" type="boolean"/>
    <aura:attribute name="res" type="Integer"/>
    <aura:handler name="init" value="{!this}" action="{!c.doInit}"/>
    
    <aura:if isTrue="{!v.flag1}">
    <lightning:card iconName="standard:account" title="Arithmetic Operations using Aura:If">
        <aura:set attribute="actions">
            <lightning:button label="add" onclick="{!c.invoke}" aura:id = "addBtn"/>
            <lightning:button label="sub" onclick="{!c.invoke}" aura:id = "subBtn"/>
            <lightning:button label="mul" onclick="{!c.invoke}" aura:id = "mulBtn"/>
            <lightning:button label="div" onclick="{!c.invoke}" aura:id = "divBtn"/>
        </aura:set>
        <lightning:input label="First Value" aura:id="fv"/>
        <lightning:input label="Second Value" aura:id="sv"/>
    </lightning:card>
        <aura:set attribute="else">
           Result  : {!v.res}
        </aura:set>
        </aura:if>
</aura:application>