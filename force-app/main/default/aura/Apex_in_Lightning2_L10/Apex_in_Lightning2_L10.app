<aura:application extends="force:slds" controller="AuraEnabledClass2">
    <aura:attribute name="Industry" type="string"/>
    <aura:attribute name="accRecord" type="Account" default="{'sobjectType':'Account'}"/>
    <aura:attribute name="flag" type="boolean" default="false"/>
    
    <div style="margin:100px;width:400px;">
        <lightning:input label="Industry" value="{!v.Industry}" /><br/>
        <lightning:button label="Search" onclick="{!c.doSearch}"/>
    </div>
    <aura:if isTrue="{!v.flag}">
    <lightning:card title="Account Details" iconName="standard:account">
        Name      :  {!v.accRecord.Name}<br/>
        Phone     :   {!v.accRecord.Phone}<br/>
        Industry  :   {!v.accRecord.Industry}<br/>
    </lightning:card>
        </aura:if>
 </aura:application>