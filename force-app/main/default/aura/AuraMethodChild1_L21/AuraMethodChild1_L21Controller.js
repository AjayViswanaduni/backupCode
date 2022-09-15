({
	displayButton2 : function(component, event, helper) {
        //to get all the parameters from aura method
		var Params = event.getParam('arguments');
        console.log('Value is:'+Params.flag);
        component.set("v.boolFlag",Params.flag);
	}
})