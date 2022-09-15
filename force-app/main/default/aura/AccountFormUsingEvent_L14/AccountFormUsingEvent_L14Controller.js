({
	doSave : function(component, event, helper) {
		var action = component.get("c.insertAccount");
        var accRecord = component.get("v.acc");
        console.log(JSON.stringify(accRecord));
        action.setParams({"objA":accRecord});
        action.setCallback(this,function(response){
           	var state = response.getState();
            console.log(state);
            if(state == 'SUCCESS'){
                var res = response.getReturnValue();
                console.log(res);
                if(res != 'Error'){
                    var evt = component.getEvent("first");
                  evt.setParams({"acct":accRecord}); 
                    evt.fire();
                }
            }
        });
        $A.enqueueAction(action); 
	},  
    doCancel : function(component, event, helper){
        component.set("v.acc",null);
    }
})