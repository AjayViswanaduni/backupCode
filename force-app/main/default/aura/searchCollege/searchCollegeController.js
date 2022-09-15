({
	showColleges : function(component, event, helper) {
        //columns
        var cols = [
            {label:'Account Name',fieldName:'Name',type:'Text'},
            {label:'Account Phone',fieldName:'Phone',type:'Text'},
            {label:'Account Industry',fieldName:'Industry',type:'Text'}
        ];
        component.set("v.myColumns",cols);
        //data for lightningTable
        var key = component.get("v.IndustryKey");
		var action = component.get("c.getAccounts");
        action.setParams({"strIndustry":key});
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