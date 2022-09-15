<aura:application extends="force:slds">
    <aura:attribute name="fname" type="string" />
    <aura:attribute name="lname" type="string" />
    <aura:attribute name="sal" type="integer" />
    <aura:attribute name="tax" type="integer" />
	<aura:attribute name="nsal" type="integer" />
    
    <lightning:card iconName="standard:employee_job_position" footer="developed by @AjayViswanaduni">
    <aura:set attribute="title">
        <h1><b><u>Employee Salary Sheet</u></b></h1>
        </aura:set>
        <aura:set attribute="actions">
            <!-- <lightning:button label="Calculate Net Salary" onclick="{!c.netSalCalc}"/> -->
            <lightning:button label="Refresh" onclick="{!c.clearData}"/>
        </aura:set>
        <lightning:input label="First Name" type="text" value="{!v.fname}"/>
        <lightning:input label="Last Name" type="text" value="{!v.lname}"/>
        <lightning:input label="Salary" type="number" value="{!v.sal}"/>
        <lightning:input label="Tax %" type="number" value="{!v.tax}" onblur="{!c.netSalCalc}"/>
        <lightning:input label="Net Salary" type="number" value="{!v.nsal}"/>
        <!--<aura:set attribute="footer">
          developed by @AjayViswanaduni
        </aura:set>-->
    </lightning:card>
</aura:application>