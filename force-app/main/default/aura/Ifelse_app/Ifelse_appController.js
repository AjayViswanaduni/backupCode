({
    doInit : function(component, event, helper){
      component.set("v.flag1",true);  
    },
    invoke : function(component, event, helper) {
		var btnId = event.getSource().getLocalId();
        var a = component.find("fv").get("v.value");
        var b = component.find("sv").get("v.value");
        var res = 0;
        if(btnId =='addbtn'){
            res = parseInt(a) + parseInt(b);
            component.set("v.res",res);
            component.set("v.flag1",false);
        }
	}
})