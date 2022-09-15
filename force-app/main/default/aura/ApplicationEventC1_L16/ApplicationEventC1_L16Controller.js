({
	invoke : function(component, event, helper) {
		//to get the event
        var evt = $A.get("e.c:ApplicationEvent_L16");
        //to fire
        evt.fire();
	}
})