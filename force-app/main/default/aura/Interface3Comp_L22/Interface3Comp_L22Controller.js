({
	getDetails : function(component, event, helper) {
		//get the event
		var evt = component.getEvent("first");
        //set the values to the event
        evt.setParams({"name":"Aj","phone":"9885634248","country":"India","city":"Tuni"});
        //fire the event
        evt.fire();
	},
    invoke : function(component, event, helper) {
		component.set("v.myName",event.getParam("name"));
        component.set("v.myPhone",event.getParam("phone"));
        component.set("v.myCity",event.getParam("city"));
        component.set("v.myCountry",event.getParam("country"));
        component.set("v.flag",true);
	}
})