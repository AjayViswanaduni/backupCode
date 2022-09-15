({
	getDetails : function(component, event, helper) {
		component.inputs('Ajay','9885634248','Tirupati','India');
	},
    getInputs : function(component, event, helper){
        var Params = event.getParam("arguments");
        component.set("v.myName",Params.Name);
        component.set("v.myPhone",Params.Phone);
        component.set("v.myCity",Params.City);
        component.set("v.myCountry",Params.Country);
        component.set("v.flag",true);
    }
})