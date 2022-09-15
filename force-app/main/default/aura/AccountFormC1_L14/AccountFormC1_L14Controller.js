({
	save : function(component, event, helper) {
		var action = component.get("c.insertAccount");
        var accRecord = component.get("v.acc")
        action.setParams({"acc":accRecord});
        action.setCallback(this,function(response){
           var state = response.getState();
            if(state == 'SUCCESS'){
                var result = response.getReturnValue();
                if(result != 'Error'){
                component.set("v.flag",true);
                }
            }
        });
        $A.enqueueAction(action);
	},
    cancel : function(component, event, helper) {
		component.set("v.acc",null);
        component.set("v.flag",false);
	}
})