({
    doSearch : function(component, event, helper) {
        var skey = component.get("v.key");
        var action = component.get("c.getAccount");
        action.setParams({"strIndustry":skey});
        action.setCallback(this,function(response){
           var state = response.getState();
        if(state == 'SUCCESS'){
            var res = response.getReturnValue();
            component.set("v.acc",res);
            component.set("v.flag",true);
        }
    });
    $A.enqueueAction(action);
}
 })