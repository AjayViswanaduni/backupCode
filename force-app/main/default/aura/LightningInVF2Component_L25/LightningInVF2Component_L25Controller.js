({
    invoke : function(component, event, helper) {
        var cols = [
            {label:"Name",fieldName:"Name",type:"text"}, 
            {label:"Phone",fieldName:"Phone",type:"text"}, 
            {label:"Industry",fieldName:"Industry",type:"text"} 
        ];
        component.set("v.myColumns",cols);
        var searchParam = component.get("v.searchParam")
        var action = component.get("c.getAccounts");
        action.setParams({"skey":searchParam});
        action.setCallback(this,function(response){
            var state = response.getState();
            if(state == 'SUCCESS'){
                var result = response.getReturnValue();
                component.set("v.lstAccounts",result);
                component.set("v.flag",true);

                
            }
        });
        $A.enqueueAction(action);
    }
})