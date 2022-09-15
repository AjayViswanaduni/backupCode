global Class WSEXP1{
 static webservice void insertCrs(String crs, Integer Fee){
 Course__C crss = new Course__C();
 crss.Name = crs;
 crss.Fee__c = Fee;

 try{
  insert crss;
  }
  catch(Exception e){
  system.debug('Invalid data');
  }
  }
  }