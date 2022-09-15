({
	invoke : function(component, event, helper) {
        var cols = [
            {label:'Account Name',fieldName:'Name',type:'text'},
            {label:'Account Phone',fieldName:'Phone',type:'text'},
            {label:'Account Industry',fieldName:'Industry',type:'text'},
        ];
            component.set("v.myColumns",cols);
		var action = component.get("c.getAccounts");
            action.setCallback(this,function(response){
             var state = response.getState();
            if(state == 'SUCCESS'){
            var result = response.getReturnValue();
            if(result != ''){
            component.set("v.lstAccounts",result);
            component.set("v.flag",true);
            }
            }
            });
        $A.enqueueAction(action);
	}
})