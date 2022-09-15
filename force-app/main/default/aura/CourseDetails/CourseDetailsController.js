({
	doSearch : function(component, event, helper) {
		//Call the Apex method
   var action = component.get("c.getCourse");
        //set the params
        action.setParams({"strCourse":component.get("V.strkey")});
        //now set call back
        action.setCallback(this,function(response){
            var state = response.getState();
            console.log(state);
            if(state=='SUCCESS'){
              var result = response.getReturnValue();
                console.log(result);
                component.set("v.CourseRecord",result);
                component.set("v.flag",true);
            }
        });
                                                     
        $A.enqueueAction(action);
	}
})