<aura:application extends="force:slds" controller="wrapperClassExample">
    <aura:attribute name="key" type="string"/>
    <aura:attribute name="acc" type="wrapperClassExample.wrapEx"/>
    <aura:attribute name="flag" type="boolean" default="false"/>
    <div style="padding:50px;width:500px;">
    <lightning:input label="Enter the Industry Name" type="text" value="{!v.key}"/>
    <lightning:button label="Search Industry" variant="brand" onclick="{!c.doSearch}"/>
        </div>
    <aura:if isTrue="{!v.flag}">
        <lightning:card title="Account Details" iconName="standard:account">
        <div>
            Account Name  :  {!v.acc.accName}<br/>
            Account Phone  :  {!v.acc.accPhone}<br/>
            Account Industry  :  {!v.acc.accIndustry}<br/>
        </div>
            </lightning:card>
    </aura:if>
</aura:application>