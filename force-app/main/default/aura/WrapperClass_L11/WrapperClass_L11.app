<aura:application extends="force:slds" controller="WrapperClass_L11">
    <aura:attribute name="accRecord" type="WrapperClass_L11.accountRegistration"/>
    <aura:attribute name="Industry" type="string"/>
    <aura:attribute name="flag" type="boolean" default="false"/>
    
    <div style="margin-left:100px;margin-top:100px;height:100px;width:500px;">
        <lightning:input label="Industry" value="{!v.Industry}"/>
        <lightning:button label="Search" onclick="{!c.invoke}"/>
    </div>
    
    <aura:if isTrue="{!v.flag}">
        <div style="margin-left:100px;padding:20px;border:1px solid green;width:400px;">
            <lightning:card title="Account Details" iconName="standard:account">
                <b>Name</b> :  {!v.accRecord.accName}<br/>
                <b>Phone</b> :  {!v.accRecord.accPhone}<br/>
                <b>Industry</b> :  {!v.accRecord.accIndustry}<br/>
            </lightning:card>
        </div>
    </aura:if>
</aura:application>