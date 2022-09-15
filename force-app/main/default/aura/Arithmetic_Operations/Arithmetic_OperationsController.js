({
	run : function(cmp, event, helper) {
		//to get the values from application we use cmp reference which is the first argument
		var a = cmp.get("v.firstValue");
        var b = cmp.get("v.secondValue");
        console.log('a is' +a);
        console.log('b is' +b);
        
        
        var result = 0;
        result = (a+b);
        cmp.set("V.sum",result);
        console.log('Sum is' + result);
        
        result = (a*b);
        cmp.set("v.product",result);
        console.log('Product is' + result);
	}
})