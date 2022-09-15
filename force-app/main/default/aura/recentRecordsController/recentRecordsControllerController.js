({
    doInit : function(component, event, helper) {
        var cols = [
            {label:"Name",fieldName:"Name",type:"text"}  
        ];
        component.set("v.myColumns",cols);
        var obj = component.get("v.sObjectName");
        var action = component.get("c.getRecords");
        action.setParams({"objName":obj});
        action.setCallback(this,function(response){
            var state = response.getState();
            if(state == 'SUCCESS'){
                var result = response.getReturnValue();
                if(result != ''){
                    component.set("v.lstRecords",result);
                }
            }
        });
        $A.enqueueAction(action);
    }
})