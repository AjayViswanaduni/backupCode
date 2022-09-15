({
	invoke : function(component, event, helper) {
        //we need to get the event first
		var event = component.getEvent("first");
        //then we will fire the event
        event.fire();
        console.log('Inside of Component1 and invoke method');
        alert('Child1 is invoked');
	}
})