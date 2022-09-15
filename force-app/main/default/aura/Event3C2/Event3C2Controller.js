({
	displayData : function(component, event, helper) {
		var crsRecord = event.getParam("crs");
        if(crsRecord != ''){
            component.set("v.crs",crsRecord);
            component.set("v.flag",true);
        }
	}
})