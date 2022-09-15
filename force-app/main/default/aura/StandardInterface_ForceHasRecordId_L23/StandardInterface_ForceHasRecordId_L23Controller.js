({
	invoke : function(component, event, helper) {
		var accRecID = component.get("v.recordId");
        console.log('id '+accRecID);
        var action = component.get("c.getCount");
        action.setParams({"accId":accRecID})
        action.setCallback(this,function(response){
           var state = response.getState();
            if(state == 'SUCCESS'){
                var result = response.getReturnValue();
                component.set("v.contactCount",result);
                if(result == 0){
                    component.set("v.boolflag",false);
                    component.set("v.flag",true);
                }
            }
        });
        $A.enqueueAction(action);
	}
})