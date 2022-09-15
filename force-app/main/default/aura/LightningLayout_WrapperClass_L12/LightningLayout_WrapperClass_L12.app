<aura:application extends="force:slds" controller="LightningLayoutWithWrapClass_L12">
    <aura:attribute name="lstRecords" type="LightningLayoutWithWrapClass_L12.WrapData"/>
    <aura:attribute name="columns" type="List"/>
    <aura:attribute name="flag" type="boolean" default="false"/>
    
    <lightning:card title="Account Records" iconName="standard:account">
        <aura:set attribute="actions">
            <lightning:button label="Show Accounts" onclick="{!c.invoke}"/>
        </aura:set>
        <aura:if isTrue="{!v.flag}">
            <lightning:dataTable
                                 keyField="id"
                                 data="{!v.lstRecords}"
                                 columns="{!v.columns}"
                                 hideCheckboxColumn="true"/>
        </aura:if>
    </lightning:card> 
</aura:application>