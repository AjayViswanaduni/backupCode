<aura:application extends="force:slds" controller="Aura_Iteration_L12">
    <aura:attribute name="lstAccounts" type="List"/>
    <aura:attribute name="columns" type="List"/>
    <aura:attribute name="flag" type="boolean" default="false"/>
    
    <lightning:card title="Account Records" iconName="standard:account">
        <aura:set attribute="actions">
            <lightning:button label="Show Accounts" onclick="{!c.invoke}"/>
        </aura:set>
        <aura:if isTrue="{!v.flag}">
            <lightning:dataTable
                                 keyField="id"
                                 data="{!v.lstAccounts}"
                                 columns="{!v.columns}"
                                 hideCheckboxColumn="true"/>
        </aura:if>
    </lightning:card> 
</aura:application>