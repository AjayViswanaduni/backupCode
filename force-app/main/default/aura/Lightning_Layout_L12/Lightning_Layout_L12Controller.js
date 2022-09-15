({
    doInit : function(component, event, helper) {
        var cols1 = [
            {label:'Account Name',fieldName:'Name',type:'text'},
            {label:'Account Phone',fieldName:'Phone',type:'text'},
            {label:'Account Industry',fieldName:'Industry',type:'text'}
        ];
        component.set("v.accCols",cols1);
        var action1  = component.get("c.getAccounts");
        action1.setCallback(this,function(response1){
            var state1 = response1.getState();
            console.log(state1);
            if(state1 == 'SUCCESS'){
                var result1 = response1.getReturnValue();
                component.set("v.lstAccounts",result1);
            }
        });
        $A.enqueueAction(action1);
        var cols2 = [
            {label: 'Contact Last Name', fieldName: 'LastName', type:'text'},
            {label: 'Contact Email', fieldName: 'Email', type: 'text'}
        ];
        component.set("v.conCols",cols2);
        
        var action2  = component.get("c.getContacts");
        action2.setCallback(this,function(response2){
            var state2 = response2.getState();
            if(state2 == 'SUCCESS'){
                var result2 = response2.getReturnValue();
                component.set("v.lstContacts",result2);
            }
        });
        $A.enqueueAction(action2);
    }
})