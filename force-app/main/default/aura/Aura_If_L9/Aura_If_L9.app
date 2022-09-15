<aura:application extends="force:slds">
    <aura:attribute name="flag1" type="boolean" default="false"/>
    <aura:attribute name="flag2" type="boolean" default="false"/>
    
    <lightning:button label="Show Customer Details" onclick="{!c.showDetails}"/>
    <lightning:button label="Show Job Details" onclick="{!c.jobDetails}"/>
    <lightning:button label="Refresh" onclick="{!c.refresh}"/>
    
    <aura:if isTrue="{!v.flag1}">
    <div class="details">
     <h1><b><u>Customer Details</u></b></h1>
        First Name  :  Ajay<br/>
        Last Name   :  Viswanaduni<br/>
        Phone       :  9885634248<br/>
        Email       :  ajayviswanaduni4248@gmail.com<br/>
    </div>
    </aura:if>
    <aura:if isTrue="{!v.flag2}">
    <div class="details">
     <h1><b><u>Job Details</u></b></h1>
        Company Name  :  SSS pvt ltd<br/>
         Location     :  Tirupati<br/>
    </div>
	</aura:if>
</aura:application>