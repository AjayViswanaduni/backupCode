({
	showAccount : function(component, event, helper) {
		var accRecord = event.getParam("acc");
        component.set("v.accData",accRecord);
        component.set("v.flag",true);
	}
})