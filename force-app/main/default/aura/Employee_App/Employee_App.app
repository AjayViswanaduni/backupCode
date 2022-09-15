<aura:application extends="force:slds">
    <aura:attribute name="fName" type="string"/>
	<aura:attribute name="lName" type="string"/>
    <aura:attribute name="sal" type="integer"/>
    <aura:attribute name="tax" type="integer"/>
    <aura:attribute name="nSal" type="integer"/>
    <lightning:card iconName="custom:custom15" title="">
        <aura:set attribute="title">
           <h1>Employee Details</h1>
        </aura:set> 
        <aura:set attribute="footer">
            copyrights@aj.com
        </aura:set>
        <aura:set attribute="actions">
            <lightning:button label="Calculate Net Sal" onclick="{!c.nSalCalc}"/>
            <lightning:button label="Refresh" onclick="{!c.refresh}"/>
        </aura:set>
     <div style="padding:50px;">
    <lightning:input label="First Name" type="text" value="{!v.fName}"/>
    <lightning:input label="Second Name" type="text" value="{!v.lName}"/>
    <lightning:input label="Salary" type="number" value="{!v.sal}"/>
    <lightning:input label="Tax %" type="number" value="{!v.tax}"/>
    <lightning:input label="Net Salary" type="number" value="{!v.nSal}"/>
      </div>
        </lightning:card>
</aura:application>