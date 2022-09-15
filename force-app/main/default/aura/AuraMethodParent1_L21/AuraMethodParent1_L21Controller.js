({
	btnAction : function(component, event, helper) {
        //identify the child component
		var child = component.find("one");
        //call the aura:method of child component and pass the boolean value
        child.btn2Action(true);
	}
})