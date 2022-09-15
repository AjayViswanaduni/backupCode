({
	invoke : function(component, event, helper) {
		var btnParam = event.getSource();//Event Source Information=>name&Id
        //to get the name of the event
        var btnName = btnParam.get("v.name");
        console.log('Button Name:'+btnName);
        //to get the id of the event
        var btnId = btnParam.getLocalId();
        console.log('Button Id:'+btnId);
	}
})