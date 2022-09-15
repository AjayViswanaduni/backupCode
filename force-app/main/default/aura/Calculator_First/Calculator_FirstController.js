({
	addition : function(component, event, helper) {
        var n1;//to store value of num1
        var n2;//to store value of num2
        var sum;//to store value of result
        n1 = component.get("v.num1");//fetch value from component
		n2 = component.get("v.num2");
        sum = parseInt(n1) + parseInt(n2);//perform the task
        //send the value from controller to component
        component.set("v.res",sum);
        //send data to Apex
       },
    
        difference : function(component, event, helper) {
        var n1;//to store value of num1
        var n2;//to store value of num2
        var diff;//to store value of result
        n1 = component.get("v.num1");//fetch value from component
		n2 = component.get("v.num2");
        diff = parseInt(n1) - parseInt(n2);//perform the task
        //send the value from controller to component
        component.set("v.res",diff);
        //send data to Apex
	},
    multiplication : function(component, event, helper) {
        var n1;//to store value of num1
        var n2;//to store value of num2
        var mul;//to store value of result
        n1 = component.get("v.num1");//fetch value from component
		n2 = component.get("v.num2");
        mul = parseInt(n1) * parseInt(n2);//perform the task
        //send the value from controller to component
        component.set("v.res",mul);
        //send data to Apex
	},
 division : function(component, event, helper) {
        var n1;//to store value of num1
        var n2;//to store value of num2
        var div;//to store value of result
        n1 = component.get("v.num1");//fetch value from component
		n2 = component.get("v.num2");
        div = parseInt(n1) / parseInt(n2);//perform the task
        //send the value from controller to component
        component.set("v.res",div);
        //send data to Apex
	}
})