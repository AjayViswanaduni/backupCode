({
	nSalCalc : function(component, event, helper) {
		var salary = component.get("v.sal");
        var taxVal = component.get("v.tax");
        var netsalary = (salary)-(salary*taxVal/100);
        component.set("v.nSal",netsalary);
	},
    refresh : function(component, event, helper) {
        component.set("v.fName",null);
        component.set("v.lName",null);
        component.set("v.sal",null);
        component.set("v.tax",null);
        component.set("v.nSal",null);
    }
})