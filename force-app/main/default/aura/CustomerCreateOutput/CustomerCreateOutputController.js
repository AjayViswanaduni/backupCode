({
	doSave : function(component, event, helper) {
		var action = component.get("c.InsertCrs");
        var CourseRecord = component.get("v.Course");
        action.setParams({"objA":CourseRecord});
        action.setCallback(this,function(response){
         var state = response.getState();
            if(state=='SUCCESS'){
        var res = response.getReturnValue();
        if(res != 'ERROR'){
            component.set("V.flag",true); 
             }
          }
        });
        
        $A.enqueueAction(action);
	},
    doCancel : function(component, event, helper) {
		component.set("v.Course",null);
	}
})