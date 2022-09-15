({
	ShowCustomerDetails : function(component, event, helper) {
		component.set("v.flag1",true);
	},
    showJobDetails : function(component, event, helper){
        component.set("v.flag2",true);
    },
    refresh : function(component, event, helper){
        component.set("v.flag1",false);
        component.set("v.flag2",false);
    }
})