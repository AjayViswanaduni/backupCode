({
    //to initiate the attributes when the component is loaded
    doInit : function(component,event,helper){
      component.set("v.firstValue",40);
        component.set("v.secondValue",20);
        component.set("v.add",0);
        component.set("v.mul",0);
        component.set("v.div",0);
        component.set("v.sub",0);
    },
    add : function(component, event, helper) {
		helper.calculate(component,'add');
	},
    sub : function(component, event, helper) {
		helper.calculate(component,'sub');
	},
    mul : function(component, event, helper) {
		helper.calculate(component,'mul');
	},
    div : function(component, event, helper) {
		helper.calculate(component,'div');
	}
})