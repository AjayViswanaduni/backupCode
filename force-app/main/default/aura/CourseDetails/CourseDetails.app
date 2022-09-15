<aura:application extends="force:slds" controller="CourseDetails">
    <aura:attribute name="strkey" type="string"/>
	<aura:attribute name="CourseRecord" type="Course__c" default="{'sobjectType':'Course__c'}"/>
    <aura:attribute name="flag" type="boolean" default="false"/>
    <lightning:input label="Course Name" value="{!v.strkey}"/>
    <lightning:button label="Search" onclick="{!c.doSearch}"/>
    <aura:if isTrue="{!v.flag}">
        <lightning:card title="Course Info" iconName="standard:bundle_config">
            Name              :  {!v.CourseRecord.Name}
            Duration          :  {!v.CourseRecord.Duration__c}
            Fee               :  {!v.CourseRecord.Fee__c}
            Mode of Training  :  {!v.CourseRecord.Mode_Of_Training__c}
        </lightning:card>
    </aura:if>
</aura:application>