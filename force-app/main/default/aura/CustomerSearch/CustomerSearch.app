<aura:application extends="force:slds" controller="EmpDetails" >
    <aura:attribute name="strkey" type="string"/>
	<aura:attribute name="EmpRecord" type="Employee__c" default="{'sobjectType':'Employee__c'}"/>
    <aura:attribute name="flag" type="boolean" default="false"/>
    <div>
        <lightning:input label="Employee Name" value="{!v.strkey}"/><br/>
        <lightning:button label="search" onclick="{!c.doSearch}" />
    </div>
    <aura:if isTrue="{!v.flag}">
        <lightning:card title="Employee Details" iconName="standard:avatar" > 
             <div>
                      Name              :  {!v.EmpRecord.Name}<br/>
                      Gender            :  {!v.EmpRecord.Gender__c}<br/>
                      Qualification     :  {!v.EmpRecord.Qualification__c}<br/>
                      Date of Joining   :  {!v.EmpRecord.Date_Of_Joining__c}<br/>
                      Salary            :  {!v.EmpRecord.Salary__c}
             </div>         
  </lightning:card>
        </aura:if>
</aura:application>