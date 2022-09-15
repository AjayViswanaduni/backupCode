trigger AccountScenariotrg on Account (before insert) {
    list<contact> contacts = new list<contact>();
    for(account ac: trigger.new){
        if(ac.Industry == 'Banking'){
            contact con = new contact();
            con.LastName = ac.Name;
            con.Phone = ac.Phone;
            con.AccountId = ac.Id;
            contacts.add(con);
        }
    }
    insert contacts;
}