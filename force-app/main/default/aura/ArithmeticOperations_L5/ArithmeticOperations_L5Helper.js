({
	calculate : function(c,action) {
		var a =c.get("v.firstValue");
        var b =c.get("v.secondValue");
        var result = 0;
        if(action=='add'){
        c.set("v.add",(a+b));
        }
       if(action=='sub'){
        c.set("v.sub",(a-b));
        }
        if(action=='mul'){
        c.set("v.mul",(a*b));
        }
        if(action=='div'){
        c.set("v.div",(a/b));
        }
	}
})