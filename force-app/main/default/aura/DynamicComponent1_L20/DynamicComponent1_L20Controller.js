({
	btnAction : function(component, event, helper) {
     $A.createComponent(
            "lightning:button",
            {
                "label" :"Button2",
                "aura:id":"btn2",
                "onclick":component.getReference("c.btn2Action")
            },
            function(cmp,status,errorMessage){
                if(status == 'SUCCESS'){
                    component.set("v.body",cmp);
                }
            }
        );
	},
    btn2Action : function(component, event, helper){
        component.set("v.flag",true);
    }
})