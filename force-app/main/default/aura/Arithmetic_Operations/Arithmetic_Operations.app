<aura:application extends="force:slds">
    <aura:attribute name="firstValue" type="integer" default="20" />
    <aura:attribute name="secondValue" type="integer" default="30" />
    <aura:attribute name="sum" type="integer" default="0" />
    <aura:attribute name="product" type="integer" default="0" />
    <aura:handler name="init" value="{!this}" action="{!c.run}"/>
    
    First Value    :  {!v.firstValue}
    <br/>
    Second Value    :  {!v.secondValue}
    <br/>
    Sum Value    :  {!v.sum}
    <br/>
    Product Value    :  {!v.product}
</aura:application>