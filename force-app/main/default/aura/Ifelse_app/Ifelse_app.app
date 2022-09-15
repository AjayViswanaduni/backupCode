<aura:application extends="force:slds">
    <aura:attribute name="res" type="Integer" />
    <aura:attribute name="flag1" type="boolean" />
    <aura:handler name="init" value="{!this}" action="{!c.doInit}"/> 
    
    <aura:if isTrue="{!v.flag1}">
        <div class="details">
            <lightning:card  iconName="standard:account" >
                <aura:set attribute="title">
                    <h1>Arithmetic Operations</h1>
                </aura:set> 
                <aura:set attribute="actions">
                    <lightning:button label="Add" onclick="{!c.invoke}" aura:id="addbtn"/>
                </aura:set>
                <div class="input1">
                    <lightning:input label="First Value" aura:id="fv" />
                    <lightning:input label="Second Value" aura:id="sv"/>
                 </div>
            </lightning:card>
       </div>
        <aura:set attribute="else"> 
            Result : {!v.res}
        </aura:set>
    </aura:if>
</aura:application>