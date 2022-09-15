({
	invoke : function(component, event, helper) {
    var evt = component.getEvent("first");
        evt.setParams({"flag":true});
        evt.fire();
	}
})