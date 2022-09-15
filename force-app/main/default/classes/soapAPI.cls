global class soapAPI {
    static webservice void mtdName(){
        contact obj = new contact();
        obj.LastName = 'Madan Bro';
        obj.Email = 'vinajrajabro@gmail.com';
        insert obj;
    }
}