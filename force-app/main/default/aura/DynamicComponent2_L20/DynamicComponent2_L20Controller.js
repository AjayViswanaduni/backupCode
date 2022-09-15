({
	btnAction : function(component, event, helper) {
		$A.createComponent(
            "c:CustomerInfo_L20",
            {
                "Name":"Mr.Innocent",
                "Phone":"8074313338",
                "Industry":"Software"
            },
            function(cmp,status,errorMessage){
                if(status == 'SUCCESS'){
                    component.set("v.body",cmp);
                }
            }
        );
	}
})