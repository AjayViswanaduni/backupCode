({
	doInit : function(cmp, event, helper) {
		cmp.set("v.flag1",true);
	},
    invoke : function(cmp, event, helper) {
        var btnId = event.getSource().getLocalId();
		var a = cmp.find("fv").get("v.value");
        var b = cmp.find("sv").get("v.value");
        var res=0;
        console.log(a);
        console.log(b);
        
        if(btnId == 'addBtn'){
            res = parseInt(a)+parseInt(b);
            console.log(res);
            cmp.set("v.res",res);
            cmp.set("v.flag1",false);
        }
        if(btnId == 'subBtn'){
            res = parseInt(a)-parseInt(b);
            console.log(res);
            cmp.set("v.res",res);
            cmp.set("v.flag1",false); 
        }
        if(btnId == 'mulBtn'){
            res = parseInt(a)*parseInt(b);
            console.log(res);
            cmp.set("v.res",res);
            cmp.set("v.flag1",false);
        }
        if(btnId == 'divBtn'){
            res = parseInt(a)/parseInt(b);
            console.log(res);
            cmp.set("v.res",res);
            cmp.set("v.flag1",false);
        }
	}
})