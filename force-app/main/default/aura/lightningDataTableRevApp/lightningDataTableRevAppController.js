({
	doSearch : function(component, event, helper) {
		var cols =[
            {label:'Account Name',fieldName:'Name',type:'text'},
            {label:'Account Phone',fieldName:'Phone',type:'text'},
            {label:'Account Industry',fieldName:'Industry',type:'text'},
        ];
            component.set("v.myColumns",cols);
            var skey = component.get("v.key");
            var action = component.get("c.getAccounts");
            action.setParams({"strIndustry":skey});
            action.setCallback(this,function(response){
            var state = response.getState();
            if(state == 'SUCCESS'){
            var result = response.getReturnValue();
            component.set("v.flag2",true);
            }
            if(result != null){
            component.set("v.lstAccounts",result);
            component.set("v.flag",true);
            }
            });  
            $A.enqueueAction(action);
	},
            refresh : function(component, event, helper) {
            component.set("v.flag",false);
            component.set("v.key",false);
            }
})