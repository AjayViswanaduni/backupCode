({
    save : function(component, event, helper) {
        var accRecord = component.get("v.acc");
        var action = component.get("c.insertAccount");
        action.setParams({"obj":accRecord});
        action.setCallback(this,function(response){
            var state = response.getState();
            if(state== 'SUCCESS'){
                var result = response.getReturnValue();
                if(result != 'Error'){
                    var evt = component.getEvent("first");
                    evt.fire();
                }
            }
        });
        $A.enqueueAction(action);
    },
    cancel : function(component, event, helper) {
        component.set("v.acc",null);
    }
})