({
	invoke : function(component, event, helper) {
        // To get the input of First Value using Id "fV"
		var a = component.find("fv").get("v.value");
        console.log(a);
        var b = component.find("sv").get("v.value");
        console.log(b);
        
        var btnId = event.getSource().getLocalId(); // button Id
        var btnName = event.getSource().get("v.name");  // button Name
        
        console.log('btnId '+btnId);
        console.log('btnName '+btnName);
        var res = 0;
        if(btnId == 'btnAdd'){
            res = parseInt(a) + parseInt(b);
            component.set("v.result",res);
        }
        if(btnId == 'btnMul'){
            res = parseInt(a) * parseInt(b); 
            component.set("v.result",res);
        }
        console.log(res);
	}
})