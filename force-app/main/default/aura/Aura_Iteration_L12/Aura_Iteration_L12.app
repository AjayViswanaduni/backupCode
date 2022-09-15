<aura:application extends="force:slds">
    <aura:attribute name="Ages" type="Integer[]" default="[10,20,30,40,50,60,70,80,90]"/>
    <aura:iteration items="{!v.Ages}" var="age">
        <p style="padding:20px;">{!age}</p>
    </aura:iteration>
</aura:application>