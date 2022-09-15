({
	doSearch : function(component, event, helper) {
		var action = component.get("c.getEmp");
        //passsing the strEmp to the server side controller
        action.setParams({"strEmp":component.get("v.strkey")});
        //setcallback
        action.setCallback(this,function(response){
           var state = response.getState();
            console.log(state);
            if(state == 'SUCCESS'){
                var result = response.getReturnValue();  
                console.log(result);
                component.set("v.EmpRecord",result);
                component.set("v.flag",true);
            }
          });
        $A.enqueueAction(action);
	}
})