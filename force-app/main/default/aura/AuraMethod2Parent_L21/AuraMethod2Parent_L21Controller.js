({
	save : function(component, event, helper) {
        var accRecord = component.get("v.acc");
		var action = component.get("c.insertAccount");
        action.setParams({"obj":accRecord});
        action.setCallback(this,function(response){
           var state = response.getState();
            if(state=='SUCCESS'){
                var result = response.getReturnVaue();
                if (result != 'Error'){
                    var child =component.find("one");
                    child.getData(true);
                }
            }
        });
        $A.enqueueAction(action);
	},
    cancel : function(component, event, helper) {
		component.set("v.acc",null);
	}
})