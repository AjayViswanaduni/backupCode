<aura:application extends="force:slds">
    <aura:attribute name="flag" type="boolean" default="true"/>
    <aura:attribute name="confirmationMsg" type="boolean" default="false"/>
    <aura:if isTrue="{!v.flag}">
	<lightning:recordEditForm aura:id="rec" objectApiName="Account" onsuccess="{!c.showMessage}" onsubmit="{!c.someAction}">
        <lightning:card title="Edit account" iconName="standard:account">
            <aura:set attribute="actions">
                <lightning:button label="Save" type="submit"/>
            </aura:set>
        <lightning:inputField fieldName="Name"/>
        <lightning:inputField fieldName="Phone"/>
        <lightning:inputField fieldName="Industry"/>
            </lightning:card>
    </lightning:recordEditForm>
        </aura:if>
    <aura:if isTrue="{!v.confirmationMsg}">
    <ui:message title="Congratulations" severity="confirm" closable="true">
			Account Created Succesfully
	</ui:message> 
    </aura:if>
</aura:application>