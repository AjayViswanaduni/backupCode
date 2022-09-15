({
    save : function(component, event, helper) {
        var accRecord = component.get("v.acc");
        var action = component.get("c.insertAccount");
        action.setParams({"obj":accRecord});
        action.setCallback(this,function(response){
            var state = response.getState();
            if(state == 'SUCCESS'){
                var result = response.getReturnValue();
                if(result == 'OK'){
                var evt = $A.get("e.c:AEvent3_L17");
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