({
	sendEmail : function(component, event, helper) {
        var recordId = component.get("v.currentID");
		var action = component.get("c.sendEmailWithTemplate");
        action.setParams({"recID":recordId});
        action.setCallback(this,function(response){
            var state = response.getState();
            console.log(state);
            if(state=='SUCCESS'){
                component.set("v.flag",false);
                component.set("v.flag2",true);
            }
        });
        $A.enqueueAction(action);
	}
})