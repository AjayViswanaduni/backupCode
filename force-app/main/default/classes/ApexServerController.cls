public class ApexServerController {
    @AuraEnabled
    public static String ServerMtd(String str){
        str = 'Welcome to Aura Lightning   '+ str;
        return str;
        
        
    }

}