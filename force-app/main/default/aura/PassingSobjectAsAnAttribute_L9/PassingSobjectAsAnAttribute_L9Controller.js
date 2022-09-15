({
	invoke : function(component, event, helper) {
		
        var accData = component.get("v.acc");
        console.log(accData.Name);
        console.log(accData.Phone);
        console.log(accData.Industry);
        
        /*var name = component.get("v.acc.Name");
        console.log(name);
        var ph = component.get("v.acc.Phone");
        console.log(ph);
        var ind = component.get("v.acc.Industry");
        console.log(ind);*/
	}
})