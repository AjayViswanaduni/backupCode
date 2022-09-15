public class CustomerRegistrationCls {
	@auraEnabled
    public static String insertAccount(Account objA){
        try{
            System.debug('Account --->'+objA);
            Insert objA;
            	return objA.Id;
        }catch(Exception e){
            return 'Error'; 
        }
    }
}