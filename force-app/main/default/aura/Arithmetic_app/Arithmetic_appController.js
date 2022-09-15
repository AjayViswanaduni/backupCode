({
	run : function(cmp, event, helper) {
	    var a = cmp.get("v.firstValue");
        var b = cmp.get("v.secondValue");
        var result = 0;
        result = a+b;
        cmp.set("v.addition",result);
        result = a*b;
        cmp.set("v.multiplication",result);
	}
})