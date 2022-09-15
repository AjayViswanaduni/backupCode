({
	submit : function(component, event, helper) {
	var btnFlag = event.getParam("flag");
        component.set("v.boolFlag",btnFlag);
    }
})