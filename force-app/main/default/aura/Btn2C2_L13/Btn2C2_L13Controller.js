({
	save : function(component, event, helper) {
        var btnFlag = event.getParams("flag");
        component.set("v.flag2",btnFlag);
	}
})