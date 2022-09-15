({
	showMessage : function(component, event, helper) {
		console.log('Account created!!');
        component.set("v.flag",false);
        component.set("v.flag",true);
        component.set("v.confirmationMsg",true);
	},
    someAction : function(component, event, helper) {
        event.preventDefault();
        var evtFields = event.getParam("fields");
        evtFields["Rating"]='Hot';
        evtFields["BillingCountry"]='India';
        evtFields["BillingCity"]='Hyderabad';
        component.find("rec").submit(evtFields);
    }
})