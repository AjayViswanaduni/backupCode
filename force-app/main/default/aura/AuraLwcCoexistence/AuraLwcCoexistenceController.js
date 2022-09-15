({
    lwcHandler : function(component, event, helper) {
        var message = event.getParam('msg');
        component.set("v.message",message);
    }
})