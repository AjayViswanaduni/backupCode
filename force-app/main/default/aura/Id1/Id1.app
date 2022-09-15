<aura:application extends="force:slds">
    <aura:attribute name="result" type="integer" />
    <div class="box1">
        <lightning:card iconName="utility:activity" >
            <aura:set attribute="title">
                <h1>Arithmetic Operations (+,*)</h1>
            </aura:set>
            <aura:set attribute="actions"> 
                <lightning:button label="Add" onclick="{!c.invoke}" aura:id="btnAdd" name="btnAddName"/>
                <lightning:button label="Mul" onclick="{!c.invoke}" aura:id="btnMul" name="btnMulName"/>
            </aura:set>
            <div class="innerDiv">
                <lightning:input label="First Value" aura:id="fv"/>
                <lightning:input label="Second Value" aura:id="sv" /> <br/>
                Result is : {!v.result}
            </div>
            <aura:set attribute ="footer">
            	copy rights @salesforce.com
            </aura:set>
        </lightning:card>
    </div>
</aura:application>