<aura:application extends="force:slds">
    <aura:attribute name="flag1" type="boolean" default="false"/>
    <aura:attribute name="flag2" type="boolean" default="false"/>
    
    <div class="btnstyles">
    	<lightning:button label="Show Customer Details" onclick="{!c.ShowCustomerDetails}"/>
    	<lightning:button label="Show Job Details" onclick="{!c.showJobDetails}"/>
        <lightning:button label="Refresh" onclick="{!c.refresh}"/>
    </div>
    
    <br/><br/>
    <!-- Customer Information -->
    <aura:if isTrue="{!v.flag1}">
        <div class="details">
            <h1><b><u>Customer Information</u></b></h1> <br/>
                First Name		:	Ajay <br/>
                Last  Name		:	V <br/>
                Phone			:	+910995634248 <br/>
                Email			:	ajayv@gmail.com <br/> 
        </div>
    </aura:if>
    <!-- Job Information -->
    <aura:if isTrue="{!v.flag2}">
        <div class="details"> 
            <h1><b><u>Job Information</u></b></h1> <br/>
                Company Name	:	TCS <br/>
                City	Name	:	Hyderabad <br/>
                Street			:	Hitech City<br/>
                Country			:	India<br/>
        </div>
    </aura:if>
</aura:application>