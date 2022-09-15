<aura:application extends="force:slds" controller="AuraEnabledClass3">
    <aura:attribute name="stage" type="string"/>
    <aura:attribute name="oppRecord" type="Opportunity" default="{'sobjectType':'Opportunity'}"/>
    <aura:attribute name="flag" type="boolean" default="false"/>
    <div>
        <lightning:input label="Stage Name" value="{!v.stage}"/><br/>
        <lightning:button label="Find Opportunity" onclick="{!c.invoke}"/>
    </div><br/><br/>
    <aura:if isTrue="{!v.flag}">
    <lightning:card title="Opportunity Record" iconName="standard:opportunity">
         Name 			: {!v.oppRecord.Name}<br/>
         Stage 			: {!v.oppRecord.StageName}<br/>
         Probability    : {!v.oppRecord.Probability}<br/>
    </lightning:card>
    </aura:if>
</aura:application>