<aura:application extends="force:slds">
    <aura:attribute name="firstValue" type="integer" default="10"/>
    <aura:attribute name="secondValue" type="integer" default="20"/>
    <aura:attribute name="result" type="integer" default="0"/>
    <aura:attribute name="addition" type="integer" default="0"/>
    <aura:attribute name="multiplication" type="integer" default="0"/>
    <aura:handler name="init" value="{!this}" action="{!c.run}" />
      <br/><br/><br/>
	First Value   : {!v.firstValue}<br/>
    Second Value   : {!v.secondValue}
    Addition   : {!v.addition}
    Multiplication   : {!v.multiplication}
</aura:application>