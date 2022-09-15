({
        doInit : function(component, event, helper) {
        debugger
        var recordId = component.get("v.recordId");
		var action = component.get('c.fetchOppStage');
        action.setParams({
            oppId: recordId
        });
        action.setCallback(this, function(response){
            debugger
            var state = response.getState();
            console.log('state :: ');
            console.log(state);
            if(state === "SUCCESS"){
                //JSON.stringify(response.getReturnValue())
                var closeStageStatus = response.getReturnValue().fetchOppStage;
                var dmAlreadyAdded = response.getReturnValue().validateDmAdded;
                if(closeStageStatus=='uploadSow')
                {
                component.set("v.isCloseStage", true);
                }
                if(closeStageStatus=='uploadRls')
                {
                     component.set("v.isRlsUploadStage", true);
                }
                component.set("v.isDmAlreadyAdded", dmAlreadyAdded);
                if(dmAlreadyAdded==true)
                {
                   component.set("v.dmStageMsg","Demand Management is already added!"); 
                }
                if(closeStageStatus=='NoUpload')
                {
                    component.set("v.dmStageMsg","Demand Management is not enabled at this Stage");
                    component.set("v.isDmAlreadyAdded", true);
                }
                else if(closeStageStatus=='NoUploadExtension')
                {
                    component.set("v.dmStageMsg","Demand Management cannot be added for Extensions and Renewals");
                    component.set("v.isDmAlreadyAdded", true);
                }
                //console.log("isCloseStage--->>> " + isCloseStage);
            }
            else if(state === "ERROR") {
                var errors = response.getError();
                if(errors){
                    if(errors[0] && errors[0].message){
                        console.log("Error Message: " + errors[0].message);
                    }
                }
                else{
                    console.log("Unknown Error");
                }
            }
        });
        $A.enqueueAction(action);
	},
    doSave: function(component, event, helper) {
        debugger
         component.set("v.isDisabled",true);
        var isCloseStage = component.get("v.isCloseStage");
        var isRlsUploadStage = component.get("v.isRlsUploadStage");
        if(isCloseStage==true)
        {
            var fileUploadComp = component.find('fileUploadSow');
            fileUploadComp.fileUploadSave();
        }
        else if(isRlsUploadStage==true)
        {
            var fileUploadComp = component.find('fileUploadRls');
            fileUploadComp.fileUploadSave();
        }
        else
        {
            var fileUploadComp = component.find('fileUpload');
            fileUploadComp.fileUploadSave();
        }       
       
       
        /*
        var fileUploadComp = component.find('fileUpload');
        fileUploadComp.fileUploadSave();
        */
    },
    
    closeModel : function(component, event, helper) {
        $A.get("e.force:closeQuickAction").fire() 
    },
})