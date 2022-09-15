({
	doSearch : function(component, event, helper) {
		//calling server side method=>getAccount
		var action = component.get("c.getAccount");
        //passing strIndustry to server side controller method getAccount
        action.setParams({"strIndustry":component.get("v.Industry")});
        //set the callback
        action.setCallback(this,function(response){
            var state = response.getState();
            if(state == 'SUCCESS'){
                var result = response.getReturnValue();
                component.set("v.accRecord",result);
                component.set("v.flag",true);
                console.log(result);
            }
        });
        
        //enqueue the action
        $A.enqueueAction(action);
	}
})