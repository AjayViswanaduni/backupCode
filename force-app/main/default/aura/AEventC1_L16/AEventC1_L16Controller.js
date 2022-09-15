({
    save : function(component, event, helper) {
        var accRecord = component.get("v.acc");
        var action = component.get("c.createAccount");
        action.setParams({"obj":accRecord});
        action.setCallback(this,function(response){
            var state =  response.getState();
            if(state == 'SUCCESS'){
                var result = response.getReturnValue();
                if(result != 'Error'){
                    ///to get An application event
                    var evt = $A.get("e.c:AEvent2_L16");
                    //to pass the data using application event
                    evt.setParams({"acc":accRecord});
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