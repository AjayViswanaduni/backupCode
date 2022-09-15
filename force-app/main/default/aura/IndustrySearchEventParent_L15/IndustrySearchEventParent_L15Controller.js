({
	invoke : function(component, event, helper) {
        //columns
        var cols = [
            {label:'Account Name', fieldName:'Name', type:'text'},
            {label:'Account Phone', fieldName:'Phone', type:'text'},
            {label:'Account Industry', fieldName:'Industry', type:'text'}
        ];
        component.set("v.myColumns",cols);
        //data
            var key = event.getParam("strKey");
        var action = component.get("c.getAccounts");
        action.setParams({"strIndustry":key});
        action.setCallback(this,function(response){
            var state = response.getState();
            if(state=='SUCCESS'){
                var result = response.getReturnValue();
                component.set("v.lstAccounts",result);
                component.set("v.flag",true);
            }
        });
        $A.enqueueAction(action);
    }
})