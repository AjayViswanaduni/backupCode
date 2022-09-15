({
	next : function(component, event, helper) {
		var event = component.getEvent("event");
        event.setParams({"flag":true});
        event.fire();
        
	}
})