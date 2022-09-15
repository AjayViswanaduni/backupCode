<aura:application extends="force:slds">
    <aura:attribute name="firstValue" type="Integer"/>
    <aura:attribute name="secondValue" type="Integer"/>
    <aura:attribute name="add" type="Integer"/>
    <aura:attribute name="mul" type="Integer"/>
    <aura:attribute name="sub" type="Integer"/>
    <aura:attribute name="div" type="Integer"/>
    <aura:handler name="init" value="{!this}" action="{!C.doInit}"/>
    <lightning:card iconName="standard:service_appointment">
      <aura:set attribute="title">
          <h1><u><b>Arithmetic Operations(/ + * -)</b></u></h1>
        </aura:set>
       <aura:set attribute="actions">
           <lightning:button label="Add" onclick="{!c.add}"/>
           <lightning:button label="Mul" onclick="{!c.mul}"/>
           <lightning:button label="Sub" onclick="{!c.sub}"/>
           <lightning:button label="Div" onclick="{!c.div}"/>
        </aura:set> 
        <div>
            First Value  :  {!v.firstValue}<br/>
            Second Value  :  {!v.secondValue}<br/>
            <br/>
            Addition : {!v.add}<br/>
            Multiplication : {!v.mul}<br/>
            Division : {!v.div}<br/>
            Subtraction : {!v.sub}<br/>
        </div>
    </lightning:card>
</aura:application>