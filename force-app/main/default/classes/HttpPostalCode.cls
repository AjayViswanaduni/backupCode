public class HttpPostalCode {
    public string pincode{set;get;}
    public string body{set;get;}
    
    public void getPostalData(){
     string endPoint = 'http://www.postalpincode.in/api/pincode'+pincode;
        HttpRequest request = new HttpRequest();
        request.setEndpoint(endpoint);
        request.setMethod('GET');
        
        Http p = new Http();
        HttpResponse response = p.send(request);
        body = response.getBody();
    }
}