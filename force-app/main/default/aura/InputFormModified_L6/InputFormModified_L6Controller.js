({
	showdata : function(cmp, event, helper) {
		//get
		var fname = cmp.get("v.firstName");
        console.log(fname);
        var lname = cmp.get("v.lastName");
        console.log(lname);
        var ph = cmp.get("v.phone");
        console.log(ph);
        var emailId = cmp.get("v.email");
        console.log(emailId);
        var age = cmp.get("v.age");
        console.log(age);
	},
    clearData : function(cmp,event,helper){
        cmp.set("v.firstName",null);
        cmp.set("v.lastName",null);
        cmp.set("v.phone",null);
        cmp.set("v.email",null);
        cmp.set("v.age",null);
    }
})