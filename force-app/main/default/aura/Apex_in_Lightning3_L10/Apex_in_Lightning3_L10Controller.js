({
	invoke : function(component, event, helper) {
		var action = component.get("c.getOpp");
        //get params and set params
        action.setParams({"oppStage":component.get("v.stage")});
        //set the callback
        action.setCallback(this,function(response){
            var state = response.getState();
            console.log(state);
            if(state == 'SUCCESS'){
                var result= response.getReturnValue();
                console.log(result);
                component.set("v.oppRecord",result);
                component.set("v.flag",true);
            }
        });
        //enqueue the action
        $A.enqueueAction(action);
	}
})