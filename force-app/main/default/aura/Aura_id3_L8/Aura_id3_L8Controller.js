({
	runLogic : function(cmp, event, helper) {
        //to get the inputs using aura:id
		var a = cmp.find("fv").get("v.value");
        console.log(a);
        var b = cmp.find("sv").get("v.value");
        console.log(b);
        //to get the button Id,Name based on which we are going to perform the action
        var btnId = event.getSource().getLocalId();
        var btnName = event.getSource().get("v.name"); 
        
        console.log('btnId :'+btnId);
        console.log('btnName :'+btnName);
        var res = 0;
        
        if(btnId == 'addBtn'){
            res = parseInt(a)+parseInt(b);
            cmp.find("res").set("v.value",res);
            console.log(res);
        }
        if(btnId == 'mulBtn'){
            res = parseInt(a)*parseInt(b);
            cmp.find("res").set("v.value",res);
            console.log(res);
        }
        if(btnId == 'subBtn'){
            res = parseInt(a)-parseInt(b);
            cmp.find("res").set("v.value",res);
            console.log(res);
        }
        if(btnId == 'divBtn'){
            res = parseInt(a)/parseInt(b);
            cmp.find("res").set("v.value",res);
            console.log(res);
        }
        if(btnId == 'refBtn'){
            cmp.find("fv").set("v.value",null);
            cmp.find("sv").set("v.value",null);
            cmp.find("res").set("v.value",null);
        }
	}
})