({
	InvokeAction : function(cmp, event, helper) {
        //to get the value when we use aura:id is=> component.find("id").get("v.value");
		var fname = cmp.find("fname").get("v.value");
        console.log('First Name '+fname);
        
        var lname = cmp.find("lname").get("v.value");
        console.log('Last Name '+lname);
        
        var ph = cmp.find("ph").get("v.value");
        console.log('Phone '+ph);
	}
})