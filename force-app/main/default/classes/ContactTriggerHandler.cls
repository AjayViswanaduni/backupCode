public class ContactTriggerHandler {
	public static boolean isTriggerRan= false;
    public static void afterInsertLogic(List<contact> newList){
        List<contact> conList = new List<Contact>();
        for(contact con: newList){
            contact c1 = new contact();
            c1.lastName = 'TEst ContacT';
            conList.add(c1);
        }
        Insert conList;
    }
}