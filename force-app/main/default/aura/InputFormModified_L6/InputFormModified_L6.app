<aura:application extends="force:slds">
    <aura:attribute name="firstName" type="string"/>
    <aura:attribute name="lastName" type="string"/>
    <aura:attribute name="phone" type="string"/>
    <aura:attribute name="email" type="string"/>
    <aura:attribute name="age" type="integer"/>
    <div style="width:600px;padding:40px;margin:100px;border:2px solid black;">
        <lightning:input label="First Name" type="text" value="{!v.firstName}" />
        <lightning:input label="Second Name" type="text" value="{!v.lastName}" />
        <lightning:input label="Phone" type="phone" value="{!v.phone}" />
        <lightning:input label="Email" type="email" value="{!v.email}" />
        <lightning:input label="Age" type="number" value="{!v.age}" />
        <center>
        <lightning:button label="Show Data" onclick="{!c.showdata}"/>
        <lightning:button label="Clear Data" onclick="{!c.clearData}"/>
        </center>
    </div>
    <!-- <div>
        First Name: {!v.firstName}<br/>
        Last Name: {!v.lastName}<br/>
        Phone: {!v.phone}<br/>
        Email: {!v.email}<br/>
        Age: {!v.age}<br/>
    </div> -->
</aura:application>