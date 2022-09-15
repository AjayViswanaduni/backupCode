({
	createAccount : function(component, event, helper) {
		var account = component.get("v.accRecord");
        console.log(JSON.stringify(account));
        var action = component.get("c.insertAcc");
        action.setParams({"acc":account});
        action.setCallback(this,function(response){
           var state = response.getState();
            console.log(state);
            if(state == 'SUCCESS'){
                var result = response.getReturnValue;
                alert(result);
            }
        });
        
        $A.enqueueAction(action);
	},
    refresh : function(component, event, helper) {
        component.set("v.accRecord",null);
        }
})