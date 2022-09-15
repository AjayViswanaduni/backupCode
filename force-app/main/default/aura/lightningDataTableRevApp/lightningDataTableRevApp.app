<aura:application extends="force:slds" controller="lightningDataTableRev">
    <aura:attribute name="key" type="string"/>
    <aura:attribute name="flag" type="boolean" default="false"/>
    <aura:attribute name="flag2" type="boolean" default="false"/>
    <aura:attribute name="lstAccounts" type="list"/>
    <aura:attribute name="myColumns" type="list"/>
    <div style="padding:50px;width:500px;">
        <lightning:input label="Enter the Industry Name" type="text" value="{!v.key}"/>
        <lightning:button label="Search Industry" variant="brand" onclick="{!c.doSearch}"/>
        <aura:if isTrue="{!v.flag2}">
            <lightning:button label="Refresh" variant="brand" onclick="{!c.refresh}"/>
        </aura:if>
    </div>
    <aura:if isTrue="{!v.flag}">
        <lightning:dataTable 
                             keyField="id"
                             columns="{!v.myColumns}"
                             data="{!v.lstAccounts}">
        </lightning:dataTable>
        
    </aura:if>
    
</aura:application>