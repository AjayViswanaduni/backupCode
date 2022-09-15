({
	invoke : function(component, event, helper) {
        var cols = [
            {label:'Account Name', fieldName:'Name', type:'text'},
            {label:'Account Phone', fieldName:'Phone', type:'text'},
            {label:'Account Industry', fieldName:'Industry', type:'text'}
        ];
        component.set("v.columns",cols);
		var action = component.get("c.getAccount");
        action.setCallback(this,function(response){
           var state =response.getState();
            if(state == 'SUCCESS'){
                var result = response.getReturnValue();
                component.set("v.lstAccounts",result);
                component.set("v.flag",true); 
            }
        });
        $A.enqueueAction(action);
	}
})