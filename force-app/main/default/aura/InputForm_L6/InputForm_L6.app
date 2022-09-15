<aura:application extends="force:slds">
    <div style="padding:50px;width:600px;">
	<lightning:card iconName="utility:type">
    <aura:set attribute="title">
        <h1><b><u>Input Form</u></b></h1>
        </aura:set>
        <aura:set attribute="actions">
            <lightning:button label="Save" />
            <lightning:button label="Cancel" />
        </aura:set>
            <lightning:input label="FirstName" type="text" />
            <lightning:input label="LastName" type="text" />
            <lightning:input label="Phone" type="tel" />
            <lightning:input label="Email" type="email" />
            <lightning:input label="DOB" type="date" />
            <lightning:input label="SecurityPin" type="password" />
            <lightning:input label="ProfileUrl" type="url" />
            <lightning:input label="Married?" type="checkbox" />
    </lightning:card>
        </div>
</aura:application>