({
    invoke : function(component, event, helper) {
        var ind = component.get("v.IndustryKey");
        var evt = $A.get("e.c:AEvent4_L17");
        evt.setParams({"skey":ind});
        evt.fire();
    }
})