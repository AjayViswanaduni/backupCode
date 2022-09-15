<aura:application extends="force:slds">
    <lightning:card iconName="utility:activity">
        <aura:set attribute="title">
        <h1>Arithmetic Operations through Aura:Id</h1>
        </aura:set>
        <aura:set attribute="actions">
            <lightning:button label="add" onclick="{!c.runLogic}" aura:id="addBtn" name="add"/>
            <lightning:button label="mul" onclick="{!c.runLogic}" aura:id="mulBtn" name="mul"/>
            <lightning:button label="sub" onclick="{!c.runLogic}" aura:id="subBtn" name="sub"/>
            <lightning:button label="div" onclick="{!c.runLogic}" aura:id="divBtn" name="div"/>
            <lightning:button label="Refresh" onclick="{!c.runLogic}" aura:id="refBtn" name="refresh"/>
        </aura:set>
    <lightning:input label="First Value" aura:id="fv"/>
    <lightning:input label="Second Value"  aura:id="sv"/>
    <lightning:input label="Result"  aura:id="res"/>
        </lightning:card>
</aura:application>