({
	netSalCalc : function(component, event, helper) {
		var sal = component.get("v.sal");
        console.log(sal);
        var tax = component.get("v.tax");
        console.log(tax);
        var netSal = 0;
        console.log(netSal);
        netSal = sal - ((sal)*(tax/100));
        component.set("v.nsal",netSal);
        console.log(netSal);
	}, 
    clearData : function(component,event,helper){
        component.set("v.fname",null);
        component.set("v.lname",null);
        component.set("v.sal",null);
        component.set("v.tax",null);
        component.set("v.nsal",null);
    }
})