({
	clientMtd : function(cmp, event, helper) {
        //Step 1 : Collect data from component
       var sname = cmp.get("v.Stud_name");
       var op_mesg;
        //Step 2 : Check whether component is connected to Controller
        //Step 3 : Connect to the method to be invoked which is in Apex Controller and register the event
       var action = cmp.get("c.ServerMtd");//server method is connected to perform the action
        //Step 4 : Supply the inputs to the ServerMtd
       action.setParams({str : sname});//JSON string
        //Step 5 : Call the ServerMtd
      $A.enqueueAction(action);//Async JS
        //Step 6 : Action gets the response, use the Anonymous Function
      action.setCallback(this,function(response){
        //Aura Framework generates the response based on server action
        //Step 7 : Get the response state
      var state = response.getState();//this conveys the state/result of execution  
        //Step 8 : Based on the state, process the component data
      if(state == "SUCCESS"){
      op_mesg = response.getReturnValue();//WElcome to aura lightning
      cmp.set("v.mesg", op_mesg);    
          }
      else{
      op_mesg = response.getError();
      cmp.set("v.mesg","Something Happend Wrong");     
          }
      });
		
	}
})