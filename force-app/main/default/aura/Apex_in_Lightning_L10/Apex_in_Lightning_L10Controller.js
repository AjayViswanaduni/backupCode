({
	invoke : function(component, event, helper) {
        //It invokes the server side controller method
		var action = component.get("c.DisplayName");
        //set call back
        action.setCallback(this,function(response){
            //write the code to capture values
            //state=>success/error
            //results=>output
         var state = response.getState();
		 console.log(state);
         if(state == 'SUCCESS'){ 
         var result = response.getReturnValue();
         console.log(result);
         component.set("v.MyName",result);
     }
        });
        //this will add action to the queue
        $A.enqueueAction(action);
	}
})