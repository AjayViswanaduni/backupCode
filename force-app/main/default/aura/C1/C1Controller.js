({
	invoke : function(component, event, helper) {
        console.log('From C1 and Invoke method');
        alert('Component 1 is invoked');
	var evt = 	component.getEvent("first");
        evt.fire();
	}
})