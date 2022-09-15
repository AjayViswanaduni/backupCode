({
    doInit : function(component, event, helper) {
        var recordId = component.get("v.currentID");
        var action = component.get("c.sendEmailWithTemplate");
        action.setParams({"recID":recordId});
        action.setCallback(this,function(response){
            var state = response.getState();
            console.log(state);
            if(state=='SUCCESS'){
                var toastEvent = $A.get("e.force:showToast");
                toastEvent.setParams({
                    "title": "Success!",
                    "message": "The Email has been sent successfully."
                });
                
                toastEvent.fire();
                
            }
        });
        $A.enqueueAction(action);
    }
})