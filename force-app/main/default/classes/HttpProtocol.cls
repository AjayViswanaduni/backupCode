public class HttpProtocol {
    public String ipAddress{set;get;}
    public String body{set;get;}
    public Integer statusCode{set;get;}
    public string data{set;get;}
    Public void showService(){
        String endPoint = 'http://www.utrace.de/?query='+ipAddress;
        HttpRequest request = new HttpRequest();
        request.setEndpoint(endPoint);
        request.setMethod('GET');
        
        Http p = new Http();
        HttpResponse response = p.send(request); 
         body = response.getBody();
        statusCode = response.getStatusCode();
        data = response.getHeader('Content-Type');
    }
}