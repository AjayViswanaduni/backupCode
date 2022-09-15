<aura:application extends="force:slds" controller="Lightning_Layout_Example_L12">
    <aura:attribute name="lstAccounts" type="List"/>
    <aura:attribute name="lstContacts" type="List"/>
    <aura:attribute name="accCols" type="list"/>
    <aura:attribute name="conCols" type="list"/>
    <aura:handler name="init" value="{!this}" action="{!c.doInit}"/>
    
    
    <lightning:layout multipleRows="true">
        <lightning:layoutItem size="4">
            <lightning:datatable
                                 keyField="id"
                                 data="{! v.lstAccounts }"
                                 columns="{! v.accCols }"
                                 hideCheckboxColumn="false"/>
        </lightning:layoutItem><br/><br/><br/>
        <lightning:layoutItem size="5">
            <lightning:datatable
                                 keyField="id"
                                 data="{! v.lstContacts }"
                                 columns="{! v.conCols }"
                                 hideCheckboxColumn="true"/>
        </lightning:layoutItem>
    </lightning:layout>
    
</aura:application>