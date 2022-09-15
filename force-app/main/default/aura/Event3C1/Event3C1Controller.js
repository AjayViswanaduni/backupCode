({
	doSave : function(component, event, helper) {
		var action = component.get("c.InsertCrs");
        var crsRecord = component.get("v.crs");
        action.setParams({"objA":crsRecord});
        action.setCallback(this,function(response){
           	var state = response.getState();
            console.log(state);
            if(state == 'SUCCESS'){
                var res = response.getReturnValue();
                console.log(res);
                if(res != 'Error'){
                    var evt = component.getEvent("first");
                    evt.setParams({"crs":crsRecord}); 
                    evt.fire();
                }
            }
        });
        $A.enqueueAction(action); 
	},  
    doCancel : function(component, event, helper){
        component.set("v.crs",null);
    }
})