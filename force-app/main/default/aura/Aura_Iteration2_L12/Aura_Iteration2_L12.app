<aura:application extends="force:slds" controller="Aura_Iteration_L12">
    <aura:attribute name="lstAccounts" type="List"/>
    <aura:attribute name="flag" type="boolean" default="false"/>
    
    <lightning:card title="Account Records" iconName="standard:account">
        <aura:set attribute="actions">
            <lightning:button label="Show Accounts" onclick="{!c.invoke}"/>
        </aura:set>
        <aura:if isTrue="{!v.flag}">
            <table>
                <tr>
                    <td>
                        <b>Name</b> 
                    </td>
                    <td>
                        <b>Phone</b> 
                    </td>
                    <td>
                        <b>Industry</b> 
                    </td>
                </tr>
                <aura:iteration items="{!v.lstAccounts}" var = "acc">
                    <tr>
                        <td>
                            {!acc.Name}
                        </td>
                        <td>
                            {!acc.Phone}
                        </td>
                        <td>
                            {!acc.Industry}
                        </td>
                    </tr>
                </aura:iteration>
            </table>
        </aura:if>
    </lightning:card> 
</aura:application>